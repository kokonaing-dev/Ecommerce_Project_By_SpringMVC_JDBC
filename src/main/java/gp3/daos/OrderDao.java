package gp3.daos;

import gp3.models.OrderDetail;
import gp3.models.Orders;
import gp3.models.User;

import java.util.List;

public interface OrderDao {

//    List<Orders> getOrderByUser_id(int id);

    int updateAddressAndPhoneAndReturnId(String address , String phone);

//    List<Orders> getOrdersToDelivery();

//    int totalCountFroUser(int id);

    int createOrderAndReturnId(Orders order);

    List<Orders> getOrderByUser_id(int id);

    int updateOrderGrandTotal(double grandTotal,int order_id);

}