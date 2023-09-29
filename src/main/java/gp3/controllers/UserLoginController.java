package gp3.controllers;

import gp3.daos.AddingtableDao;
import gp3.daos.CustomerDao;
import gp3.models.Customer;
import gp3.models.TableBook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserLoginController {
    @GetMapping("/useradd")
    public String UserAddGet() {

        return "userregister";
    }

    @PostMapping("/useradd")
    public String UserAddPost(@RequestParam String customername, String password, String phone, String address) {
        Customer customer=new Customer(customername,password,phone,address);
        CustomerDao dao=new CustomerDao();
        int status = dao.createCustomer(customer);
        if (status==1){
            return "userlogin";
        }
        return "userregister";
    }

    @GetMapping("/userlogin")
    public String UserLoginGet(HttpSession session, TableBook tb) {
        AddingtableDao dao = new AddingtableDao();
        List<TableBook> tablebooks = dao.getAllTablebook();
        session.setAttribute("tablebooks", tablebooks);

//        TableBook tablebookss = new TableBook();
//        System.out.println(tablebookss.getTablename());
//        System.out.println(tablebookss.getDate());
//        System.out.println(tablebookss.getTime());
//        System.out.println("hahaha");

        ArrayList<String> tableList = new ArrayList<>();
        ArrayList<String> datesList = new ArrayList<>();
        ArrayList<String> timesList = new ArrayList<>();

        for (TableBook tablebook : tablebooks) {

            String date = tablebook.getDate();
            String time = tablebook.getTime();
            String tablename = tablebook.getTablename();

//            System.out.println(date);
//            System.out.println(time);
//            System.out.println(tablename);


            datesList.add(date);
            timesList.add(time);
            tableList.add(tablename);

//            System.out.println(datesList);
//            System.out.println(timesList);
//            System.out.println(tablename);

            session.setAttribute("date",datesList);
            session.setAttribute("time",timesList);
            session.setAttribute("tablename",tableList);
        }
        return "userlogin";
    }

    @PostMapping("/userlogin")
    public String UserLoginPost(ModelMap model, @RequestParam String customername, String password, HttpSession session) {
        CustomerDao dao = new CustomerDao();
       Customer customer = dao.selectCustomer(customername,password);
        if (customer != null){
            session.setAttribute("customerid", customer.getCustomerid());
            session.setAttribute("customer", customer);
            return "success";
        }
        else {
            model.addAttribute("error","ur faking username and password dont match");
            return "userlogin";
        }
    }
}
