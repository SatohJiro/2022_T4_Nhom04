package staging;

import java.sql.*;

public class ConnectStaging {
    private static String userName ="root";
    private static String pass="0989702459as";
    private static String url = "jdbc:mysql://localhost:3306/stagging";
// get connecting of stagging
    public static Connection getStagingConnection() throws SQLException {
                return  DriverManager.getConnection(url, userName, pass);
    }


}
