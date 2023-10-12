package gp3.impls;

import gp3.daos.OrderDao;
import gp3.helpers.DBHelpers;
import gp3.models.OrderDetail;
import gp3.models.Orders;
import gp3.models.User;
import org.springframework.stereotype.Component;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Component
public class OrderImpl implements OrderDao {


    @Override
    public int updateNullAddressAndPhone(String address, String phone) {
        int result = 0 ;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "UPDATE orders SET address = ? , phone = ? WHERE address is NULL AND phone is NULL ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1 ,address);
            ps.setString(2 , phone);
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


//    @Override
//    public List<Orders> getOrdersToDelivery() {
//        ResultSet rs ;
//        List<Orders> orders = new ArrayList<>();
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "SELECT * FROM orders WHERE enabled = 0" ;
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()){
//                Orders orders1 = new Orders();
//                orders1.setId(rs.getInt("id"));
//                orders1.setProduct_name(rs.getString("product"));
//                orders1.setCount(rs.getInt("count"));
//                orders1.setPrice(rs.getInt("price"));
//                orders1.setCust_id(rs.getInt("user_id"));
//                orders1.setEnabled(rs.getBoolean("enabled"));
//                orders1.setCreated_up(rs.getString("created_up"));
//                orders1.setAddress(rs.getString("address"));
//                orders1.setPhone(rs.getString("phone"));
//                orders.add(orders1);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return orders;
//    }

//    @Override
//    public int totalCountFroUser(int id) {
//        ResultSet rs ;
//        int total = 0 ;
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "SELECT SUM(price*count) AS total_count FROM orders WHERE user_id=? AND enabled=0" ;
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            ps.setInt(1,id);
//            rs = ps.executeQuery();
//            while (rs.next()){
//                total= rs.getInt("total_count");
//                query = "UPDATE orders SET enabled=1 WHERE user_id = ? AND enabled=0 ";
//                ps = con.prepareStatement(query);
//                ps.setInt(1, id);
//                ps.executeUpdate();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return total;
//    }

    //
    @Override
    public int createOrderAndReturnId(Orders order) {

        int generatedOrderId = -1 ;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO orders (date,total,address,phone,user_id) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            ps.setDouble(2, order.getTotal());
            ps.setString(3, order.getAddress());
            ps.setString(4, order.getPhone());
            ps.setInt(5, order.getUser_id());
            int result = ps.executeUpdate();

            // for generating orderId because we need orderId
            if (result > 0) {
                ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    generatedOrderId = generatedKeys.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return generatedOrderId;
    }

    //
    @Override
    public List<Orders> getOneOrderByUser_id(int id) {
        ResultSet rs ;
        List<Orders> orders = new ArrayList<>();
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM orders WHERE user_id = ?" ;
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);
            rs = ps .executeQuery() ;
            while (rs.next()){
                Orders orders1 = new Orders();
                orders1.setId(rs.getInt("id"));
                orders1.setDate(rs.getDate("date"));
                orders1.setTotal(rs.getDouble("total"));
                orders1.setAddress(rs.getString("address"));
                orders1.setPhone(rs.getString("phone"));
                orders1.setUser_id(rs.getInt("user_id"));
                orders.add(orders1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public int updateOrderGrandTotal(double grandTotal,int order_id) {
        int result = 0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "UPDATE orders SET total = ? WHERE  id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setDouble(1,grandTotal);
            ps.setInt(2,order_id);
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
