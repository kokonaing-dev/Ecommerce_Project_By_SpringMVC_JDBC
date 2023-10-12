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
//    public int createTable(Table table) {
//        int status = 0;
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "INSERT INTO addtable (tablename,locked) VALUES (?,?)";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, table.getTablename());
//            ps.setBoolean(2,table.isLocked());
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//
//        return status;
//    }
//
//    public List<Table> getAllTable(){
//        List<Table> tables=new ArrayList<>();
//        Connection connection= DBHelpers.getInstance().getConnection();
//        String query="SELECT * FROM addtable";
//        ResultSet rs;
//        try {
//            PreparedStatement ps=connection.prepareStatement(query);
//            rs=ps.executeQuery();
//            while(rs.next()){
//                Table table=new Table();
//                table.setId(rs.getInt("id"));
//                table.setTablename(rs.getString("tablename"));
//                table.setLocked(rs.getBoolean("locked"));
//                tables.add(table);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return tables;
//    }
//
//    public Table getTableById(int id) {
//        Table table = null;
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "SELECT * FROM addtable WHERE id=?";
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                table = new Table();
//                table.setId(rs.getInt("id"));
//                table.setTablename(rs.getString("tablename"));
//                table.setLocked(rs.getBoolean("locked"));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return table;
//    }
//
//    public List<Table> getLockedTables() {
//        ArrayList<Table> list = new ArrayList<Table>();
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "SELECT tablename, locked FROM addtable WHERE locked = 0";
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            ResultSet rs = ps.executeQuery();
//            while(rs.next()) {
//                Table table = new Table();
//                table.setTablename(rs.getString("tablename"));
//                table.setLocked(rs.getBoolean("locked"));
//                list.add(table);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//
//    }

//    public int updateTableLocked(int id,boolean locked) {
//        int status = 0;
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "UPDATE addtable SET locked=? WHERE id=?";
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            ps.setBoolean(1, locked);
//            ps.setInt(2, id);
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return status;
//    }

    public List<TableBook> getAllTablebook(){
        List<TableBook> tablebooks=new ArrayList<>();
        Connection connection= DBHelpers.getInstance().getConnection();
        String query="SELECT * FROM jointable";
        ResultSet rs;
        try {
            PreparedStatement ps=connection.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                TableBook tablebook=new TableBook();
                tablebook.setId(rs.getInt("id"));
                tablebook.setDate(rs.getString("date"));
                tablebook.setTime(rs.getString("time"));
                tablebook.setTablename(rs.getString("tablename"));
                tablebooks.add(tablebook);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tablebooks;
    }
}
