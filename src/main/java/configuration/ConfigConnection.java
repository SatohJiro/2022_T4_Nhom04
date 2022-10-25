package configuration;

import com.mongodb.client.MongoCollection;
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

    public String insertNewRecordIntoFileLog(ConfigModel cf, String date, String destFile) {
        MongoCollection<Document> collection = database.getCollection("File_log");
        String id =String.valueOf(collection.countDocuments() + 1);
        Document doc = new Document();
        doc.append("_id", new ObjectId());
        doc.append("id_config", cf.getId());
        doc.append("id", id);
        doc.append("Source_name", destFile);
        doc.append("Date", date);
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

    public String checkAlreadyCrawl(String date) {
        MongoCollection<Document> collection = database.getCollection("File_log");
        Document doc = collection.find(eq("Date", date)).first();
        if (doc == null) return "false";
        System.out.println(doc.toJson());
        return String.valueOf(doc.get("status")) ;
    }


    public static void main(String[] args) throws UnknownHostException {
        ConfigConnection cf = new ConfigConnection();
//        cf.getConfigModel();
//        cf.changeStatusFileLog("1","stagged");


    }
}
