import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class CrawData {
    private static final String AUTHOR = "Nguyen Tran Anh";
    private MongoDatabase database;
    public CrawData() throws UnknownHostException {
        this.database= Database.getDatabase("WeatherData");
    }
    public  ArrayList<Object> getFileConfig() throws UnknownHostException {
        MongoCollection<Document> collection = database.getCollection("File_Configuation");
        Bson query = Filters.eq("Active", "true");
        ArrayList<Object> temps = new ArrayList<>();
        collection.find(query).first().forEach((key, value) -> {
            System.out.println(key + " = " + value);
            temps.add(value);
        });
        return temps;
    }

    public void writeFileLog(String rootURL, String idConfig) {

        String status = "loaded";
        String nameFile = "null";
        MongoCollection<Document> collection = null;
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        String dateString = date.toString();
        try {
            Data data = new Data(rootURL);
            nameFile = data.writeData();
            collection = database.getCollection("File_log");
        } catch (IOException e) {
            status = "loadfailed";
            throw new RuntimeException(e);
        }

        Document doc = new Document();
        doc.append("_id", new ObjectId());
        doc.append("id_config", idConfig);
        doc.append("Source_name", nameFile);
        doc.append("Date", dateString);
        doc.append("status", status);
        doc.append("Author", AUTHOR);
        doc.append("id",String.valueOf(collection.countDocuments()+1));
        collection.insertOne(doc);
        System.out.println("done");
    }
    public static void main(String[] args) throws IOException {
        CrawData crawData = new CrawData();
        ArrayList<Object> objects =crawData.getFileConfig();
        crawData.writeFileLog(objects.get(2).toString(), objects.get(0).toString());
    }
}
