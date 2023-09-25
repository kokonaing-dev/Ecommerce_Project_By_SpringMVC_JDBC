package gp3.impls;

import gp3.daos.OrderDetailDao;
import gp3.helpers.DBHelpers;
import gp3.models.OrderDetail;
import gp3.models.Orders;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Component
public class OrderDetailImpl implements OrderDetailDao {

    @Override
    public int insertIntoOrderDetail(OrderDetail orderDetail) {
        int status = 0;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO order_detail (quantity,menu_item_id,order_id) VALUES (?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,orderDetail.getQuantity());
            ps.setInt(2,orderDetail.getMenu_item_id());
            ps.setInt(3,orderDetail.getOrder_id());
//            ps.setBoolean(5,false);
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    //    //didn't even use
    @Override
    public List<OrderDetail> getAllOrders() {
        ResultSet rs ;
        List<OrderDetail> orderDetailList = new ArrayList<>();
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM order_detail ";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(rs.getInt("id"));
                orderDetail.setQuantity(rs.getInt("quantity"));
                orderDetail.setMenu_item_id(rs.getInt("menu_item_id"));
                orderDetail.setOrder_id(rs.getInt("order_id"));
                orderDetailList.add(orderDetail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetailList;
    }

//    @Override
//    public OrderDetail getOrderDetailByUserId(int id) {
//        ResultSet rs ;
//        List<OrderDetail> orderDetails = new ArrayList<>();
//        Connection con = DBHelpers.getInstance().getConnection();
//        String query = "SELECT * FROM orders WHERE user_id = ?" ;
//        try {
//            PreparedStatement ps = con.prepareStatement(query);
//            ps.setInt(1,id);
//            rs = ps .executeQuery() ;
//            while (rs.next()){
//                Orders orders1 = new Orders();
//                orders1.setId(rs.getInt("id"));
//                orders1.setDate(rs.getDate("date"));
//                orders1.setTotal(rs.getDouble("total"));
//                orders1.setAddress(rs.getString("address"));
//                orders1.setPhone(rs.getString("phone"));
//                orders1.setUser_id(rs.getInt("user_id"));
//                orders.add(orders1);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return orders;
//        return null;
//    }


}
