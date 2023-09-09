package gp3.daos;

import gp3.models.Orders;
import gp3.models.User;

import java.util.List;

public interface OrderDao {

    int orderByCustomer(Orders order);

    List<Orders> getAllOrders();

    List<Orders> getOrderByUser_id(int id);

    int updateNullAddressAndPhone(String address , String phone);

    List<Orders> getOrdersToDelivery();

    int totalCountFroUser(int id);

}