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
    private final String destFolderCrawl = "./dataCrawl/";
    private final String destFolderUse = "./data/";

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

    public void getConfigProcess() throws UnknownHostException {
        cf = configConnection.getConfigModel();
    }

    public void crawDataProcess() throws IOException {
        id = configConnection.insertNewRecordIntoFileLog(cf, date, time,destFolderUse + nameFile);
        crawlData.crawlDataToFile(cf, destFolderCrawl + nameFile);
        configConnection.changeStatusFileLog(id, "crawled");
        System.out.println("Crawled");

    }

    public void loadToFTP_Process() throws IOException {
        ftp_connection = new FTP_Connection(cf);
        ftp_connection.uploadFile(destRemoteFolder, destFolderCrawl + nameFile);
        configConnection.changeStatusFileLog(id, "loadedToFTP");
        System.out.println("LoadedToFTP");
        System.out.println("delete after load to FTP " + destFolderCrawl + nameFile + " :" + deleteFile(destFolderCrawl + nameFile));
    }
    public boolean deleteFile(String sourceFile) {
        File file = new File(sourceFile);
        return file.delete();
    }

    public void dowloadFromFTP_Process() throws IOException {
        ftp_connection.downloadFile(destRemoteFolder + nameFile, destFolderUse + nameFile);
        configConnection.changeStatusFileLog(id, "dowloaded");
        System.out.println("Dowloaded");
    }


    public void stagingDataProcess() throws UnknownHostException, SQLException {
        Document doc = staggingData.getDocumentLoaded();
        staggingData.loadData(doc);
        configConnection.changeStatusFileLog(id, "stagged");
        System.out.println("Staged");
        System.out.println("delete after load to stagging " + destFolderUse + nameFile + " :" + deleteFile(destFolderUse + nameFile));


    }

    public void warehouseDataProcess() throws UnknownHostException, SQLException {
        ArrayList<WarehouseValue> listValue = warehouseData.analyzeData();
        warehouseData.loadDataIntoWarehouse(listValue);
        configConnection.changeStatusFileLog(id, "warehoused");
        warehouseData.updateExpired(Integer.parseInt(id)-1 ,time,date);
        staggingData.resetStaging();
        System.out.println("Warehoused");

    }

    public void runAllProcess() throws IOException, SQLException {
        String check = configConnection.checkAlreadyCrawl(date,time);
        id = configConnection.getIdByStatus(check);
        System.out.println("status = "+check+" | id = "+id);
        switch (check) {
            case "false","loading":
                getConfigProcess();
                crawDataProcess();//false-loading-crawled
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
