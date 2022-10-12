import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.result.InsertOneResult;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Database {

    private static final String HOST = "localhost";
    private static final int PORT = 27017;

    // Cách kết nối vào MongoDB không bắt buộc bảo mật.
    public static MongoClient getMongoClient() throws UnknownHostException {
        MongoClient mongoConnect = new MongoClient(HOST, PORT);
        return mongoConnect;
    }
    public static MongoDatabase getDatabase(String nameDB) throws UnknownHostException {
        MongoClient mongoClient = getMongoClient();
        return mongoClient.getDatabase(nameDB);
    }

}
