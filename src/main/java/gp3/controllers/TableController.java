package gp3.controllers;

import gp3.daos.AddingtableDao;
import gp3.daos.AddingtablebookDao;
import gp3.models.Table;
import gp3.models.TableBook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TableController {
    @GetMapping("/tableadd")
    public String TableAddGet() {

        return "table";
    }

    @PostMapping("/tableadd")
    public String TableAddPost(@RequestParam String tablename) {
        Table table = new Table(tablename);
        AddingtableDao dao = new AddingtableDao();

        int status = dao.createTable(table);
        if (status==1){
            return "success";
        }
        return "table";
    }

    @GetMapping("/tablebook")
    public String TableBookGet(HttpSession session,TableBook tb) {
        AddingtablebookDao dao = new AddingtablebookDao();
        List<TableBook> tablebooks = dao.getAllTablebook();
        session.setAttribute("tablebooks", tablebooks);
//        for (TableBook tablebook : tablebooks) {
//            System.out.println("Date: " + tablebook.getDate());
//            System.out.println("Time: " + tablebook.getTime());
//            session.setAttribute("date",tablebook.getDate());
//            session.setAttribute("date",tablebook.getDate());
//        }

        ArrayList<String> tableList = new ArrayList<>();
        ArrayList<String> datesList = new ArrayList<>();
        ArrayList<String> timesList = new ArrayList<>();

        for (TableBook tablebook : tablebooks) {
            String date = tablebook.getDate();
            String time = tablebook.getTime();
            String tablename = tablebook.getTablename();

            tableList.add(tablename);
            datesList.add(date);
            timesList.add(time);

            session.setAttribute("tablename",tableList);
            session.setAttribute("date",datesList);
            session.setAttribute("time",timesList);
        }
        return "tableview";
    }


    @PostMapping("/tablebook")
    public String TableBookPost(@RequestParam String tablename,String date,String time,String bname,String phone,String nog,String sr,HttpSession session) {
        TableBook tableBook = new TableBook(tablename,date,time,bname,phone,nog,sr);
        AddingtablebookDao dao = new AddingtablebookDao();
        int status = dao.createTableBook(tableBook);
        if (status==1){
            session.setAttribute("tablename", tablename);
            session.setAttribute("date", date);
            session.setAttribute("time", time);
            session.setAttribute("bname", bname);
            session.setAttribute("phone", phone);
            session.setAttribute("nog", nog);
            session.setAttribute("sr", sr);
            return "bookingResultPage";
        }
        return "table";
    }

    @GetMapping("/search")
    public String searchForm() {
        return "searchform"; // Return the name of the search form view
    }

    @PostMapping("/search")
    public String searchResults(@RequestParam String date,String time, Model model) {
        AddingtablebookDao dao = new AddingtablebookDao();
        TableBook tableBook = new TableBook(date,time);
        ArrayList<TableBook> tableBooks = dao.getAllTableBySearch(tableBook);
        model.addAttribute("finding",tableBooks);
        System.out.println(tableBooks);
        return "searchform"; // Return the name of the search results view
    }

    @GetMapping("/deletetables")
    public  String tablesDelete(@RequestParam int id){
        AddingtablebookDao dao = new AddingtablebookDao();
        int status = dao.deleteTables(id);
        if (status == 1){
            return "admintable";
        }
        return "admintable";
    }

    @GetMapping("/deletebookedtables")
    public  String bookedtablesDelete(@RequestParam int id){
        AddingtablebookDao dao = new AddingtablebookDao();
        int status = dao.deleteBookedTables(id);
        if (status == 1){
            return "bookedtables";
        }
        return "bookedtables";
    }
}
