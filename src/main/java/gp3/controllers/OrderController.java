package gp3.controllers;

import com.google.gson.Gson;
import gp3.impls.MenuImpl;
import gp3.impls.OrderImpl;
import gp3.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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


    //for check out
    @GetMapping("/checkout")
    public String checkOutGet(@RequestParam("id") int id , Model model){
        System.out.println(id);
        List<Orders> ordersList = orderImpl.getOrderByUser_id(id);
        model.addAttribute("orders",ordersList);
        return "menu/deli_info";
    }
    @PostMapping("/checkout")
    public void checkPost(HttpServletRequest request , HttpServletResponse response)  throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user"); // customer from login
        String items = request.getParameter("items"); // ajax data
        Gson gson = new Gson();
        CartItem[] cartItems = gson.fromJson(items, CartItem[].class);
        PrintWriter pw = response.getWriter();
        System.out.println("I am here");
        int result = 0;
        for (CartItem item : cartItems) {
            System.out.println(item.getId() + " " + item.getCount());
            Menu menu = menuImpl.getMenuById(item.getId());
            //insert into orders
            Orders order = new Orders(menu.getItem(), item.getCount(), menu.getPrice(), user.getId());
            session.setAttribute("orders",order); // to delivery
            result = orderImpl.orderByCustomer(order);
        }
        if (result > 0) {
            pw.write("success");
        } else {
            pw.write("error");
        }
    }


    @GetMapping("/order/singleUser")
    public String singleUserOrder(@RequestParam("id")int id , Model model){
        System.out.println(id);
        List<Orders> orders = orderImpl.getOrderByUser_id(id);
        System.out.println("orders" + orders);
        model.addAttribute("orders",orders);
        return "admin/order_details";
    }

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

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");//for user_id that login
        System.out.println(user);

        List<Orders> orders = orderImpl.getOneOrderByUser_id(user.getId());
        model.addAttribute("orders",orders);//orderList to deliver

        if (result > 0){
            System.out.println("update successfully");
            return "menu/ordered";
        }
        else {
            return "test";
        }
    }

    @GetMapping("/delivery")
    public String toReceipt(@RequestParam("id")int id , Model model , HttpServletRequest request){

        //list before true-false
        List<Orders> orders = orderImpl.getOneOrderByUser_id(id);
        System.out.println(orders);

        //count * price // during this process we change enabled to true - false
        int totalAmount = orderImpl.totalCountFroUser(id);
        System.out.println("totalamount" + totalAmount);

        model.addAttribute("userId", id);
        model.addAttribute("orders", orders);
        model.addAttribute("totalAmount", totalAmount);

        return "menu/receipt";
    }

}