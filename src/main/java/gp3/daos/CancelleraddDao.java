//package gp3.daos;
//
//import gp3.helpers.DBHelpers;
//import gp3.models.Canceller;
//import gp3.models.TableBook;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//public class CancelleraddDao {
//    public int createCanceller(Canceller canceller) {
//        int status = 0;
//        Connection connection = DBHelpers.getInstance().getConnection();
//        String query = "INSERT INTO canceller (name,contact) VALUES (?,?)";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, canceller.getName());
//            ps.setString(2, canceller.getContact());
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return status;
//    }
//
////    public List<TableBook> getAllTables() {
////        List<TableBook> tables = new ArrayList<>();
////        Connection connection = DBHelper.getInstance().getConnection();
////        String query = "SELECT * FROM tablebook";
////        ResultSet rs;
////        try {
////            PreparedStatement ps = connection.prepareStatement(query);
////            rs = ps.executeQuery();
////            while (rs.next()) {
////                TableBook tb = new TableBook();
////                tb.setId(rs.getInt("id"));
////                tb.setTablename(rs.getString("tablename"));
////                tb.setDate(rs.getString("date"));
////                tb.setTime(rs.getString("time"));
////                tb.setBname(rs.getString("bname"));
////                tb.setPhone(rs.getString("phone"));
////                tb.setNog(rs.getString("nog"));
////                tb.setSr(rs.getString("sr"));
////                tables.add(tb);
////            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////        return tables;
////    }
//}
