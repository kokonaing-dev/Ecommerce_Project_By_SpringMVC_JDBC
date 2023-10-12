//package gp3.daos;
//
//import gp3.helpers.DBHelpers;
//import gp3.models.TableBook;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//public class AddingtablebookDao {
//    public int createTableBook(TableBook tableBook) {
//        int status = 0;
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "INSERT INTO tablebook (tablename,date,time,bname,phone,nog,sr) VALUES (?,?,?,?,?,?,?)";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, tableBook.getTablename());
//            ps.setString(2, tableBook.getDate());
//            ps.setString(3, tableBook.getTime());
//            ps.setString(4, tableBook.getBname());
//            ps.setString(5, tableBook.getPhone());
//            ps.setString(6, tableBook.getNog());
//            ps.setString(7, tableBook.getSr());
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//
//        return status;
//    }
//
//    public List<TableBook> getAllTablebook(){
//        List<TableBook> tablebooks=new ArrayList<>();
//        Connection connection= DBHelpers.getInstance().getConnection();
//        String query="SELECT * FROM tablebook";
//        ResultSet rs;
//        try {
//            PreparedStatement ps=connection.prepareStatement(query);
//            rs=ps.executeQuery();
//            while(rs.next()){
//                TableBook tablebook=new TableBook();
//                tablebook.setId(rs.getInt("id"));
//                tablebook.setTablename(rs.getString("tablename"));
//                tablebook.setDate(rs.getString("date"));
//                tablebook.setTime(rs.getString("time"));
//                tablebook.setBname(rs.getString("bname"));
//                tablebook.setPhone(rs.getString("phone"));
//                tablebook.setNog(rs.getString("nog"));
//                tablebook.setSr(rs.getString("sr"));
//                tablebooks.add(tablebook);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return tablebooks;
//    }
////    public List<TableBook> getAllTablebook(){
////        List<TableBook> tablebooks=new ArrayList<>();
////        Connection connection= DBHelper.getInstance().getConnection();
////        String query="SELECT * FROM tablebook";
////        ResultSet rs;
////        try {
////            PreparedStatement ps=connection.prepareStatement(query);
////            rs=ps.executeQuery();
////            while(rs.next()){
////                TableBook tablebook=new TableBook();
////                tablebook.setId(rs.getInt("id"));
////                tablebook.setTablename(rs.getString("tablename"));
////                tablebook.setDate(rs.getString("date"));
////                tablebook.setTime(rs.getString("time"));
////                tablebook.setBname("bname");
////                tablebook.setPhone("phone");
////                tablebook.setNog("nog");
////                tablebook.setSr("sr");
////                tablebooks.add(tablebook);
////            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////        return tablebooks;
////    }
//
//    public ArrayList<TableBook> getAllTableBySearch(TableBook tableBook) {
//        ArrayList<TableBook> tableBooks = new ArrayList<>();
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "SELECT * FROM tablebook WHERE date=? Or time=?";
//        ResultSet rs;
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1,tableBook.getDate());
//            ps.setString(2,tableBook.getTime());
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                TableBook tableBooknew = new TableBook();
//                tableBooknew.setId(rs.getInt("id"));
//                tableBooknew.setTablename(rs.getString("tablename"));
//                tableBooknew.setDate(rs.getString("date"));
//                tableBooknew.setTime(rs.getString("time"));
//                tableBooknew.setBname(rs.getString("bname"));
//                tableBooknew.setPhone("phone");
//                tableBooknew.setNog("nog");
//                tableBooknew.setSr("sr");
//                tableBooks.add(tableBooknew);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return tableBooks;
//    }
//
//    public int deleteTables(int id) {
//        int status = 0;
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "DELETE FROM addtable WHERE id=?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setInt(1, id);
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return status;
//    }
//
//    public int deleteBookedTables(int id) {
//        int status = 0;
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "DELETE FROM tablebook WHERE id=?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setInt(1, id);
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return status;
//    }
//}
