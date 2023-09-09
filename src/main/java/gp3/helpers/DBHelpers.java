package gp3.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelpers {

    private final String  DRIVER = "com.mysql.cj.jdbc.Driver";
    private final String  URL = "jdbc:mysql://localhost:3306/restaurant";
    private final String  USERNAME = "root";
    private final String  PASSWORD = "root";

    private Connection connection ;
    private static DBHelpers instance = null ;

    private DBHelpers () {
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public  Connection getConnection(){
        return connection;
    }

    public static DBHelpers getInstance() {
        if (instance == null){
            instance = new DBHelpers();
        }
        return instance;
    }
}
