package configuration;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.UpdateOptions;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.UpdateResult;
import crawlData.Data;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Set;

import static com.mongodb.client.model.Filters.eq;

public class ConfigConnection {
    private MongoDatabase database;

    public ConfigConnection() throws UnknownHostException {
        this.database = MongoConnection.getDatabase("WeatherData");
    }

    public ConfigModel getConfigModel() throws UnknownHostException {
        ConfigModel cf = new ConfigModel();
        MongoCollection<Document> collection = database.getCollection("File_Configuation");
        Bson query = eq("Active", "true");
        Document result = collection.find(query).first();
        Set<String> keyConfigs = result.keySet();
        cf.setId(String.valueOf(result.get("_id")));
        cf.setSourceName(String.valueOf(result.get("sourceName")));
        cf.setSourceLoad(String.valueOf(result.get("sourceLoad")));
        cf.setFTP_IP(String.valueOf(result.get("FTP_IP")));
        cf.setPORT(Integer.parseInt(String.valueOf(result.get("PORT"))));
        cf.setUsername(String.valueOf(result.get("username")));
        cf.setPassword(String.valueOf(result.get("password")));
        cf.setAuthor(String.valueOf(result.get("author")));
        return cf;
    }

    public String insertNewRecordIntoFileLog(ConfigModel cf, String date,String time, String destFile) {
        MongoCollection<Document> collection = database.getCollection("File_log");
        String id =String.valueOf(collection.countDocuments() + 1);
        Document doc = new Document();
        doc.append("_id", new ObjectId());
        doc.append("id_config", cf.getId());
        doc.append("id", id);
        doc.append("Source_name", destFile);
        doc.append("Date", date);
        doc.append("Time", time);
        doc.append("status", "loading");
        doc.append("Author", cf.getAuthor());
        collection.insertOne(doc);
        return id;
    }

    public void changeStatusFileLog(String id, String status) {
        MongoCollection<Document> collection = database.getCollection("File_log");
        Document query = new Document().append("id", id);
        Bson updates = Updates.combine(
                Updates.set("status", status));
        UpdateOptions options = new UpdateOptions().upsert(true);
        UpdateResult result = collection.updateOne(query, updates, options);
    }


    public String getIdPrev(String id) {
        if(id.equals("1")) return null;
        MongoCollection<Document> collection = database.getCollection("File_log");
        String status="loading";
        int idTemp = Integer.parseInt(id);
        Document doc = null;
        while(!status.equals("warehoused")) {
            idTemp=idTemp-1;
             doc = collection.find(eq("id", ""+idTemp)).first();
            if (doc == null) return "false";
            status=String.valueOf(doc.get("status"));
        }
        return idTemp+"" ;
    }


    public String[] checkAlreadyCrawl(String date,String time) {
        String hour = time.substring(0,2);
        MongoCollection<Document> collection = database.getCollection("File_log");
        MongoCursor<Document> cursor = collection.find(eq("Date", date)).iterator();
        while(cursor.hasNext()) {
            Document doc = cursor.next();
            String hourDoc=String.valueOf(doc.get("Time")).substring(0,2);
            if(hour.equals(hourDoc)){
                System.out.println(doc.toJson());
                return  new String[]{String.valueOf(doc.get("status")), String.valueOf(doc.get("id"))} ;
            }
        }

        return  new String[]{"false", "false"};
    }


    public static void main(String[] args) throws UnknownHostException {
        ConfigConnection cf = new ConfigConnection();
        System.out.println(cf.getIdPrev("52"));
//        cf.getConfigModel();
//        cf.changeStatusFileLog("1","stagged");


    }
}
