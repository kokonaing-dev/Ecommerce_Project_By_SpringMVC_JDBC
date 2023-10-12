package gp3.daos;

import gp3.models.Invoice;
import gp3.models.OrderDetail;

import java.util.List;

public interface OrderDetailDao {

    int insertIntoOrderDetail(OrderDetail orderDetail);

//    List<OrderDetail> getAllOrders();

    List<Invoice> getOrderDetailByOrderId(int id);

//    OrderDetail getOrderDetailByUserId(int id);

}
