import java.sql.*;

public class StagingDatabase {
    private static String userName ="root";
    private static String pass="0989702459as";
    private static String url = "jdbc:mysql://localhost:3306/stagging";

    public static Connection getStagingConnection() throws SQLException {
                return  DriverManager.getConnection(url, userName, pass);
    }

    public static void main(String[] args) {
        StagingDatabase st = new StagingDatabase();
    }
}
