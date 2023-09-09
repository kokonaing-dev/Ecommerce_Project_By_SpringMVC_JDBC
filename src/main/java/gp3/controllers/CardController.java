package gp3.controllers;

import com.google.gson.Gson;
import gp3.impls.MenuImpl;
import gp3.impls.OrderImpl;
import gp3.models.CartItem;
import gp3.models.Menu;

import gp3.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CardController {

    @Autowired
    MenuImpl menuImpl;

    @Autowired
    OrderImpl orderImpl;

    //add to shopping cart
    @GetMapping("/cart")
    public String cartGet() {
        return "menu/card";
    }

    @PostMapping("/cart")
    public void cartPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String product = request.getParameter("items");
        System.out.println(product);
        PrintWriter pw = response.getWriter();
        Gson gson = new Gson();
        CartItem[] cartItems = gson.fromJson(product, CartItem[].class);
        List<Menu> products = new ArrayList<>();
        for (CartItem item : cartItems) {
            products.add(menuImpl.getMenuById(item.getId()));
        }
        pw.write(gson.toJson(products));
    }

}