package crawlData;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import configuration.ConfigModel;
import configuration.MongoConnection;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class CrawlData {
    private static final String AUTHOR = "Nguyen Tran Anh";
    private MongoDatabase database;
    public CrawlData() throws UnknownHostException {
        this.database= MongoConnection.getDatabase("WeatherData");
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

    public String crawlDataToFile(ConfigModel cf,String nameFile) throws IOException {
            Data data = new Data(cf.getSourceLoad());
            return data.writeData(nameFile);
    }

}
