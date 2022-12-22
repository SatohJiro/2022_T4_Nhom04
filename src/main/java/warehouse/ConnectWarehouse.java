package warehouse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectWarehouse {
    private static String userName ="root";
    private static String pass="0989702459as";
    private static String url = "jdbc:mysql://localhost:3306/warehouse";
//get connect of warehouse database
    public static Connection getWarehouseConnection() throws SQLException {
        return  DriverManager.getConnection(url, userName, pass);
    }

}
