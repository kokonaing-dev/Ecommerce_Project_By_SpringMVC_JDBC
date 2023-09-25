package gp3.daos;

import gp3.models.OrderDetail;

import java.util.List;

public interface OrderDetailDao {

    int insertIntoOrderDetail(OrderDetail orderDetail);

    List<OrderDetail> getAllOrders();

//    OrderDetail getOrderDetailByUserId(int id);

}
