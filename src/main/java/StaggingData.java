import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
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

public class StaggingData {
    private Connection databaseStagging;
    private MongoDatabase databaseFileControll;

    public StaggingData() throws UnknownHostException, SQLException {
        this.databaseStagging = StagingDatabase.getStagingConnection();
        this.databaseFileControll = Database.getDatabase("WeatherData");
    }

    public void loadData() throws UnknownHostException {
        ArrayList<Object> listDoc = getFileLoaded();
        listDoc.forEach((doc) -> {
            Document document = (Document) doc;
            String id = String.valueOf(document.get("id"));
            String path = String.valueOf(document.get("Source_name"));
            try {
                AnalyzeData(path, id);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            updateStatus(id);
        });
    }

    public ArrayList<Object> getFileLoaded() throws UnknownHostException {
        MongoCollection<Document> collection = databaseFileControll.getCollection("File_log");
        Bson query = Filters.eq("status", "loaded");
        ArrayList<Object> temps = new ArrayList<>();
        collection.find(query).forEach((item) -> {
            temps.add(item);
        });
        return temps;
    }

    public void updateStatus(String id) {
        BasicDBObject query = new BasicDBObject();
        query.put("id", "" + id);
        BasicDBObject newDocument = new BasicDBObject();
        newDocument.put("status", "stagged");
        BasicDBObject updateObject = new BasicDBObject();
        updateObject.put("$set", newDocument);
        this.databaseFileControll.getCollection("File_log").updateOne(query, updateObject);
    }



    public List AnalyzeData(String path, String id) throws SQLException {
        String sqlStagging = "INSERT INTO stagging VALUES(?, ?, ?,?, ?,?, ?, ?,?, ?,?, ?, ?,?)";
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
                // provicedim
                String provinceName = changeText(result.get(0));
                System.out.println(provinceName);
                int idProvice = getProviceId(provinceName);

                // datedim
                int idDate = getDateId(result.get(1));


                // stagging
                stmtStagging.setString(1, String.valueOf(new ObjectId()));
                stmtStagging.setInt(2, idProvice);
                stmtStagging.setInt(3, idDate);

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

                stmtStagging.setString(14, "true");
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
    public int getDateId(String date) throws SQLException {
        String[] temp = date.split("/");
        String dateTemp = temp[1]+"/"+Integer.parseInt(temp[0])+"/"+temp[2];
        String sqlSize = "SELECT id as id FROM datedim where date='"+dateTemp+"'";
        Statement stmt = databaseStagging.createStatement();
        ResultSet result = stmt.executeQuery(sqlSize);
        int dateId=0;
        while (result.next()) {
            dateId = result.getInt("id");
        }
        return dateId;
    }
    public int getProviceId(String provinceName) throws SQLException {
        String sqlSize = "SELECT id as id FROM provincedim where nameProvince='"+provinceName+"'";
        Statement stmt = databaseStagging.createStatement();
        ResultSet result = stmt.executeQuery(sqlSize);
        int id=0;
        while (result.next()) {
            id = result.getInt("id");
        }
        return id;
    }

    public static void main(String[] args) throws UnknownHostException, SQLException {
        StaggingData stagging = new StaggingData();
        stagging.loadData();

    }
    public String changeText(String text){
        String temp = Normalizer.normalize(text, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String result =pattern.matcher(temp).replaceAll("").replace('đ','d').replace('Đ','D');
        return result.replace("\"","");
    }

}
