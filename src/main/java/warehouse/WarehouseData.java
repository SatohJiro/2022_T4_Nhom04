package warehouse;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoDatabase;
import org.bson.types.ObjectId;
import staging.StaggingData;

import java.net.UnknownHostException;
import java.sql.*;
import java.util.ArrayList;

public class WarehouseData {
    private MongoDatabase databaseFileControll;
    private StaggingData databaseStagging;
    private Connection databaseWarehouse;

    public WarehouseData() throws SQLException, UnknownHostException {

        this.databaseStagging = new StaggingData();
        this.databaseWarehouse = ConnectWarehouse.getWarehouseConnection();
    }

    public ArrayList<WarehouseValue> analyzeData() throws SQLException {
        ArrayList<WarehouseValue> list = new ArrayList<>();
        String sqlStagging =
                " (select st.id,st.idLog, pd.id as idProvince, dd.id as idDate ,st.time ,sd.id, st.current_temperature, st.overview_caption , \n" +
                        "st.medium_temperature, st.humidity, st.vision , st.wind_power , \n" +
                        "st.temperature_stop_point, st.UV_Index , st.airRule \n" +
                        "from stagging st join provincedim pd on st.province = pd.nameProvince\n" +
                        "\t\t\t\t join datedim dd \t on st.date     = dd.date\n" +
                        "                 join sessiondim sd  on HOUR(st.time) = HOUR(sd.time));";
        Statement stmtStagging = databaseStagging.getConnection().createStatement();
        ResultSet rs = stmtStagging.executeQuery(sqlStagging);
        WarehouseValue wd;
        while (rs.next()) {
            wd = new WarehouseValue();
            wd.setId(rs.getString(1));
            wd.setIdLog(rs.getInt(2));
            wd.setProvinceId(rs.getInt(3));
            wd.setDateId(rs.getInt(4));
            wd.setTime(rs.getString(5));
            wd.setSessionId(rs.getInt(6));
            wd.setCurrent_temperature(rs.getString(7));
            wd.setOverview_caption(rs.getString(8));
            wd.setMedium_temperature(rs.getString(9));
            wd.setHumidity(rs.getString(10));
            wd.setVision(rs.getString(11));
            wd.setWind_power(rs.getString(12));
            wd.setTemperature_stop_point(rs.getString(13));
            wd.setUV_Index(rs.getString(14));
            wd.setAirRule(rs.getString(15));
            list.add(wd);
        }
        return list;
    }

    public void loadDataIntoWarehouse(ArrayList<WarehouseValue> list) throws SQLException {
        String sqlWarehouse = "INSERT INTO warehouse VALUES(?,?, ?, ?,?,?, ?,?, ?, ?,?, ?,?, ?, ?,?,?,?)";
        PreparedStatement stmtStagging = databaseWarehouse.prepareStatement(sqlWarehouse);
        for (int i = 0; i < list.size(); i++) {
            stmtStagging.setString(1, String.valueOf(new ObjectId()));
            stmtStagging.setInt(2, list.get(i).getIdLog());
            stmtStagging.setString(3, list.get(i).getId());
            stmtStagging.setInt(4, list.get(i).getProvinceId());
            stmtStagging.setInt(5, list.get(i).getDateId());
            stmtStagging.setString(6, list.get(i).getTime());
            stmtStagging.setInt(7, list.get(i).getSessionId());
            stmtStagging.setString(8, "00:00:00");
            stmtStagging.setString(9, "9999/12/31");
            stmtStagging.setString(10, list.get(i).getCurrent_temperature());
            stmtStagging.setString(11, list.get(i).getOverview_caption());
            stmtStagging.setString(12, list.get(i).getMedium_temperature());
            stmtStagging.setString(13, list.get(i).getHumidity());
            stmtStagging.setString(14, list.get(i).getVision());
            stmtStagging.setString(15, list.get(i).getWind_power());
            stmtStagging.setString(16, list.get(i).getTemperature_stop_point());
            stmtStagging.setString(17, list.get(i).getUV_Index());
            stmtStagging.setString(18, list.get(i).getAirRule());
            stmtStagging.execute();
        }
    }

    public void updateStatus(String id) {
        BasicDBObject query = new BasicDBObject();
        query.put("id", "" + id);
        BasicDBObject newDocument = new BasicDBObject();
        newDocument.put("status", "warehoused");
        BasicDBObject updateObject = new BasicDBObject();
        updateObject.put("$set", newDocument);
        this.databaseFileControll.getCollection("File_log").updateOne(query, updateObject);
    }

    public void updateExpired(int id, String time,String date) throws SQLException {
        String queryUpdate = "UPDATE warehouse SET expired_time = ? , expired_date = ? WHERE id_log = ?;";
        PreparedStatement updateWarehouse = databaseWarehouse.prepareStatement(queryUpdate);
        updateWarehouse.setString(1, time);
        updateWarehouse.setString(2, date);
        updateWarehouse.setInt(3, id);
        updateWarehouse.execute();
    }



    public static void main(String[] args) throws UnknownHostException, SQLException {
        WarehouseData wd = new WarehouseData();


    }


}
