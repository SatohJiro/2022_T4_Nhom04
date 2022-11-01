package staging;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import configuration.MongoConnection;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.*;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import static com.mongodb.client.model.Filters.eq;

public class StaggingData {
    private Connection databaseStagging;
    private MongoDatabase databaseFileControll;

    public StaggingData() throws UnknownHostException, SQLException {
        this.databaseStagging = ConnectStaging.getStagingConnection();
        this.databaseFileControll = MongoConnection.getDatabase("WeatherData");
    }

    public void loadData(Document doc) throws UnknownHostException, SQLException {
            String path = String.valueOf(doc.get("Source_name"));
            AnalyzeData(path);
    }

    public Document getDocumentLoaded() {
        MongoCollection collection = databaseFileControll.getCollection("File_log");
        Document doc = (Document) collection.find(eq("status", "dowloaded")).first();
        return doc;
    }




    public List AnalyzeData(String path) throws SQLException {
        String sqlStagging = "INSERT INTO stagging VALUES(?, ?, ?,?, ?,?, ?, ?,?, ?,?, ?, ?)";
        PreparedStatement stmtStagging = databaseStagging.prepareStatement(sqlStagging);
        BufferedReader br = null;
        List<String> result = new ArrayList();
        int count = 0;
        try {
            String line;
            br = new BufferedReader(new FileReader(path));
            while ((line = br.readLine()) != null) {
                if (count == 0) {
                    count++;
                    continue;
                }
                result = parseCsvLine(line);
                result.forEach((value) -> {
                    if (value == "")
                        value = null;
                });

//                String provinceName = changeText();


                // stagging
                stmtStagging.setString(1, String.valueOf(new ObjectId()));
                stmtStagging.setString(2, result.get(0));
                stmtStagging.setString(3, getFormatDate(result.get(1)));
                stmtStagging.setString(4, result.get(2));
                stmtStagging.setString(5, result.get(3));
                stmtStagging.setString(6, result.get(4));
                stmtStagging.setString(7, result.get(5));
                stmtStagging.setString(8, result.get(6));
                stmtStagging.setString(9, result.get(7));
                stmtStagging.setString(10, result.get(8));
                stmtStagging.setString(11, result.get(9));
                stmtStagging.setString(12, result.get(10));
                stmtStagging.setString(13, result.get(11));
                stmtStagging.execute();


            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (br != null)
                    br.close();
            } catch (IOException crunchifyException) {
                crunchifyException.printStackTrace();
            }
        }
        return result;
    }

    public List<String> parseCsvLine(String csvLine) {
        List<String> result = new ArrayList<String>();
        if (csvLine != null) {
            String[] splitData = csvLine.split(",");
            for (int i = 0; i < splitData.length; i++) {
                result.add(splitData[i]);
            }
        }
        return result;
    }

    public void resetStaging() throws SQLException {
        String dropTableSQL = "drop table stagging";
        String createTableSQL = "create table stagging( id varchar(24), province text, date text, time text, current_temperature text, overview_caption text, medium_temperature text, humidity text , vision text, wind_power text, temperature_stop_point text, UV_Index text, airRule text);";
        Statement st = this.databaseStagging.createStatement();
        st.execute(dropTableSQL);
        st.execute(createTableSQL);
    }


    public static void main(String[] args) throws UnknownHostException, SQLException {
        StaggingData stagging = new StaggingData();

    }

    public String changeText(String text) {
        String temp = Normalizer.normalize(text, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String result = pattern.matcher(temp).replaceAll("").replace('đ', 'd').replace('Đ', 'D');
        return result.replace("\"", "");
    }

    public String getFormatDate(String date) throws SQLException {
        String[] temp = date.split("/");
        String dateTemp = temp[1] + "/" + Integer.parseInt(temp[0]) + "/" + temp[2];
        return dateTemp;
    }

    public Connection getConnection() {
        return databaseStagging;
    }

    public void setDatabaseStagging(Connection databaseStagging) {
        this.databaseStagging = databaseStagging;
    }
}
