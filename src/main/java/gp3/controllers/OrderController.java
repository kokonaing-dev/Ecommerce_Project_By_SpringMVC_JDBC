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
    public void insertToOrderDetailPost(@ModelAttribute("order")Orders orders, Model model, HttpServletRequest request , HttpServletResponse response)  throws IOException {

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
        System.out.println("cart array"+cartItems);

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


    //id ta khu yu ya mhr
    @GetMapping("/updateAddPh")
    public String checkoutGet(Model model){
        return "menu/deli_info";
    }
    @PostMapping("/updateAddPh")
    public String checkoutPost(@RequestParam("address")String address ,
                               @RequestParam("phone") String phone , Model model){
        System.out.println(address +" "+phone);
        int order_id = orderImpl.updateAddressAndPhoneAndReturnId(address,phone);
        System.out.println("ID "+order_id);

        //this process is to show invoice
        Orders orders1 = orderImpl.getOrderById(order_id);  //order to show receipt
        System.out.println(orders1);
        model.addAttribute("order",orders1);

        List<Invoice> orderDetails = orderDetailImpl.getOrderDetailByOrderId(order_id); // menu item to show receipt
        model.addAttribute("orderDetail" ,orderDetails);
        System.out.println(orderDetails);

        if (order_id > 0){
            System.out.println("update successfully");
            return "invoice";
        }
        else {
            return "error";
        }
    }

}