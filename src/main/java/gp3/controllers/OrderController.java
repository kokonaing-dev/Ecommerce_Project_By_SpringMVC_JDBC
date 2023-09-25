package gp3.controllers;

import com.google.gson.Gson;
import gp3.impls.MenuImpl;
import gp3.impls.OrderDetailImpl;
import gp3.impls.OrderImpl;
import gp3.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class OrderController {

    //need a lot of repairation

    @Autowired
    MenuImpl menuImpl;

    @Autowired
    OrderImpl orderImpl;

    @Autowired
    OrderDetailImpl orderDetailImpl;


    //last thing
    //inserting into order detail and order at the same time
    @GetMapping("/order")
    public String insertToOrderDetailGet(Model model){
        model.addAttribute("order",new Orders());
        return "menu/deli_info";
    }
    @PostMapping("/order")
    public void insertToOrderDetailPost(@ModelAttribute("order")Orders orders, HttpServletRequest request , HttpServletResponse response)  throws IOException {

        int result = 0;
        double grandTotal = 0 ;
        //insert to order
        //date , user-id , total
        User user = (User) request.getSession().getAttribute("customer");
        Orders order = new Orders(grandTotal,orders.getAddress(),orders.getPhone(),user.getId());
        int order_id = orderImpl.createOrderAndReturnId(order);
        System.out.println("Order id"+ order_id);

        String items = request.getParameter("items"); // ajax data
        System.out.println(items);
        Gson gson = new Gson();
        CartItem[] cartItems = gson.fromJson(items, CartItem[].class);
        PrintWriter pw = response.getWriter();
        System.out.println("I am here");
        System.out.println("cart arryas"+cartItems);

        for (CartItem item : cartItems) {
            System.out.println(item.getId() + " " + item.getCount() + " " + order_id);

            //for total to order
            Menu menu = menuImpl.getMenuById(item.getId());
            double total_amount = menu.getPrice()*item.getCount();
            grandTotal += total_amount ;

            //insert into order_detail
            OrderDetail orderDetail = new OrderDetail(item.getCount(),item.getId(),order_id);
            result = orderDetailImpl.insertIntoOrderDetail(orderDetail);
        }

        System.out.println("Total "+ grandTotal);

        result = orderImpl.updateOrderGrandTotal( grandTotal, order_id);

        if (result > 0) {
            pw.write("success");
        } else {
            pw.write("error");
        }
    }
    // last thing



//    @GetMapping("/order/singleUser")
//    public String singleUserOrder(@RequestParam("id")int id , Model model){
//        System.out.println(id);
//        List<Orders> orders = orderImpl.getOrderByUser_id(id);
//        System.out.println("orders" + orders);
//        model.addAttribute("orders",orders);
//        return "admin/order_details";
//    }


    @GetMapping("/updateAddPh")
    public String checkoutGet(Model model){
        return "menu/deli_info";
    }
    @PostMapping("/updateAddPh")
    public String checkoutPost(@RequestParam("address")String address ,
                               @RequestParam("phone") String phone ,
                               Model model ,
                               HttpServletRequest request){
        System.out.println(address +" "+phone);
        int result = orderImpl.updateNullAddressAndPhone(address,phone);

//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("customer");//for user_id that login
//        System.out.println(user);
//
//        List<Orders> orders = orderImpl.getOneOrderByUser_id(user.getId());
//        model.addAttribute("orders",orders);//orderList for  deliver-process

        List<OrderDetail> orderDetailList = orderDetailImpl.getAllOrders();
        model.addAttribute("orderDetailList",orderDetailList);

        if (result > 0){
            System.out.println("update successfully");
            return "invoice";
        }
        else {
            return "test";
        }
    }

//
//    @GetMapping("/delivery")
//    public String toReceipt(@RequestParam("id")int id , Model model , HttpServletRequest request){
//
//        //list before true-false
//        List<Orders> orders = orderImpl.getOneOrderByUser_id(id);
//        System.out.println(orders);
//
//        //count * price // during this process we change enabled to true - false
//        int totalAmount = orderImpl.totalCountFroUser(id);
//        System.out.println("totalamount" + totalAmount);
//
//        model.addAttribute("userId", id);
//        model.addAttribute("orders", orders);
//        model.addAttribute("totalAmount", totalAmount);
//
//        return "menu/receipt";
//    }

    @GetMapping("/invoice")
    public String invoice(){

        return "invoice";
    }

}