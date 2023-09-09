package gp3.controllers;

import gp3.impls.OrderImpl;
import gp3.impls.UserImpl;
import gp3.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserImpl userImpl;

    @Autowired
    OrderImpl orderimpl;

    //admin login
    @GetMapping("/login")
    private String loginGet(Model model){
        model.addAttribute("user",new User());
        return "user/login";
    }
    @PostMapping("/login")
    private String loginPost(@ModelAttribute("user")@Validated User user, BindingResult brs , HttpServletRequest request){
        HttpSession session = request.getSession();
        User userFromDb = null ;
        if (brs.hasErrors()){
            System.out.println("bs error");
            return "user/login";
        }
        System.out.println("user from modelAttribute:" + user);

        userFromDb = userImpl.getUserByEmail(user);
        System.out.println("user from db by email : " + userFromDb );

        if (userFromDb == null ){
            System.out.println("can't enter");
            session.setAttribute("msgError","You Look Like a new Customer Here! Sign up First!");
            return "redirect:/register";
        }
        else {
            if (!user.getPassword().equals(userFromDb.getPassword())){
                session.setAttribute("msgPwError", "Wrong Password - Try Again!");
                return "redirect:/login";
            }
            else {
                System.out.println("authority :"+ userFromDb.getAuthority());
                if (userFromDb.getAuthority().equals("ADMIN")){
                    session.setAttribute("admin",userFromDb);
                    return "redirect:/menu";
                }
                session.setAttribute("user",userFromDb);
                session.setAttribute("msgSuccess", "Welcome Back! :3");
                return "redirect:/menu";
            }
        }
    }


    //register before checkout
    @GetMapping("/register")
    public String regGet(Model model) {
        model.addAttribute("user",new User());
        return "user/register";
    }
    @PostMapping("/register")
    public String regPost(Model model , @Valid User user , BindingResult brs,HttpServletRequest request) throws IOException {
        if (brs.hasErrors()){
            return "user/register";
        }
        user.setAuthority("USER");

        int result = userImpl.createUser(user);
        System.out.println(result);
        if (result > 0){
            System.out.println("success");
            return "menu";
        }
        return "user/register";
    }

    //show all customer by admin
    @GetMapping("/view_customers")
    public String viewCustomerPost(Model model){
        List<User> customers = userImpl.getAllCustomer();
        System.out.println(customers);
        model.addAttribute("customers",customers);
        return "admin/view_all_customer";
    }

    //admin logout
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "redirect:/menu";
    }

}