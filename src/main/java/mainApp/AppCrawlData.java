package mainApp;


import configuration.ConfigConnection;
import configuration.ConfigModel;
import configuration.FTP_Connection;
import crawlData.CrawlData;
import org.bson.Document;
import staging.StaggingData;
import warehouse.WarehouseData;
import warehouse.WarehouseValue;

import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class AppCrawlData {
    private ConfigConnection configConnection;
    private ConfigModel cf;
    private FTP_Connection ftp_connection;
    private CrawlData crawlData;
    private StaggingData staggingData;
    private WarehouseData warehouseData;
    private final String destRemoteFolder = "WeatherData/";
    private final String destFolderCrawl = "C:/Users/trana/OneDrive/Desktop/DataCrawl/";
    private final String destFolderUse =  "C:/Users/trana/OneDrive/Desktop/Data/";
    private final String beginFileName = "dataWeather_";

    private String date;
    private String time;
    private String nameFile;
    private String id;

    public AppCrawlData() throws IOException, SQLException {
        configConnection = new ConfigConnection();
        crawlData = new CrawlData();
        staggingData = new StaggingData();
        warehouseData = new WarehouseData();
        Date calendar = Calendar.getInstance().getTime();
       this.date = new SimpleDateFormat("yyyy-MM-dd").format(calendar);
        this.time = new SimpleDateFormat("HH:mm:ss").format(calendar);
        this.nameFile = beginFileName + date +"_"+time.substring(0,2)+ "h.csv";
    }
//get config from database MongoDB
    public void getConfigProcess() throws UnknownHostException {
        cf = configConnection.getConfigModel();
    }
    //if status is loading, start crawl data
    public void crawDataProcess(String idPrev) throws IOException {
        if(idPrev.equals("false"))
            id = configConnection.insertNewRecordIntoFileLog(cf, date, time,destFolderUse + nameFile);
        else
            id = idPrev;
        crawlData.crawlDataToFile(cf, destFolderCrawl + nameFile);
        configConnection.changeStatusFileLog(id, "crawled");
        System.out.println("Crawled");

    }
//load file crawled to FTP server
    public void loadToFTP_Process() throws IOException {
        ftp_connection = new FTP_Connection(cf);
        ftp_connection.uploadFile(destRemoteFolder, destFolderCrawl + nameFile);
        configConnection.changeStatusFileLog(id, "loadedToFTP");
        System.out.println("LoadedToFTP");
        System.out.println("delete after load to FTP " + destFolderCrawl + nameFile + " :" + deleteFile(destFolderCrawl + nameFile));
    }
    //delete file on local
    public boolean deleteFile(String sourceFile) {
        File file = new File(sourceFile);
        if(file.exists()) System.out.println("exists");
        return file.delete();
    }
// dowload file from FTP server
    public void dowloadFromFTP_Process() throws IOException {
        ftp_connection = new FTP_Connection(cf);
        ftp_connection.downloadFile(destRemoteFolder + nameFile, destFolderUse + nameFile);
        configConnection.changeStatusFileLog(id, "dowloaded");
        System.out.println("Dowloaded");
    }
// load data to stagging for annalyze
    public void stagingDataProcess() throws UnknownHostException, SQLException {
        Document doc = staggingData.getDocumentLoaded();
        staggingData.loadData(doc);
        configConnection.changeStatusFileLog(id, "stagged");
        System.out.println("Staged");
        System.out.println("delete after load to stagging " + destFolderUse + nameFile + " :" + deleteFile(destFolderUse + nameFile));


    }
// analyze data and  push to warehouse
    public void warehouseDataProcess() throws UnknownHostException, SQLException {
        ArrayList<WarehouseValue> listValue = warehouseData.analyzeData();
        warehouseData.loadDataIntoWarehouse(listValue);
        staggingData.resetStaging();
        String idPrev=configConnection.getIdPrev(id);
        System.out.println("idPrev is: "+idPrev);
        if (idPrev == null) {
            configConnection.changeStatusFileLog(id, "warehoused");
            System.out.println("Warehoused");
            return;
        };
        int idParam = Integer.parseInt(idPrev);
        warehouseData.updateExpired(idParam,time,date);
        configConnection.changeStatusFileLog(id, "warehoused");
        System.out.println("Warehoused");


    }
// check status and run process
    public void runAllProcess() throws IOException, SQLException {
        String[] check = configConnection.checkAlreadyCrawl(date,time);
        id = check[1];
        System.out.println("status = "+check[0]+" | idExist = "+check[1]);
        switch (check[0]) {
            //if status is false or loading, start all process
            case "false","loading":
                getConfigProcess();
                crawDataProcess(id);//false-loading-crawled
                loadToFTP_Process();//crawled-loadedToFTP
                dowloadFromFTP_Process();//loadedToFTP-dowloaded
                stagingDataProcess();//dowloaded-stagged
                warehouseDataProcess();//stagged-warehoused
                break;

            case "crawled":
                getConfigProcess();
                loadToFTP_Process();//crawled-loadedToFTP
                dowloadFromFTP_Process();//loadedToFTP-dowloaded
                stagingDataProcess();//dowloaded-stagged
                warehouseDataProcess();//stagged-warehoused
                break;
            case "loadedToFTP":
                getConfigProcess();
                dowloadFromFTP_Process();//loadedToFTP-dowloaded
                stagingDataProcess();//dowloaded-stagged
                warehouseDataProcess();//stagged-warehoused
                break;

            case "dowloaded":
                stagingDataProcess();//dowloaded-stagged
                warehouseDataProcess();//stagged-warehoused
                break;
            case "stagged":
                warehouseDataProcess();//stagged-warehoused
                break;
            case "warehoused":
                break;

        }
    }

    public static void main(String[] args) throws IOException, SQLException {
        AppCrawlData app = new AppCrawlData();
        app.runAllProcess();

    }


}
