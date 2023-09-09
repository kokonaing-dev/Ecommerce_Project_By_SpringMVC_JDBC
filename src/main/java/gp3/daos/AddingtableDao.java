package gp3.daos;

import gp3.helpers.DBHelpers;
import gp3.models.Table;
import gp3.models.TableBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddingtableDao {
    public int createTable(Table table) {
        int status = 0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO addtable (tablename) VALUES (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, table.getTablename());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return status;
    }

    public List<Table> getAllTable(){
        List<Table> tables=new ArrayList<>();
        Connection connection= DBHelpers.getInstance().getConnection();
        String query="SELECT * FROM addtable";
        ResultSet rs;
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                Table table=new Table();
                table.setId(rs.getInt("id"));
                table.setTablename(rs.getString("tablename"));
                tables.add(table);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tables;
    }


}
