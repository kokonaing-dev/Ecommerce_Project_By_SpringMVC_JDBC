//package gp3.controllers;
//
//import gp3.daos.CancelleraddDao;
//import gp3.models.Canceller;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//public class CancellerController {
//    @GetMapping("/adminadmin")
//    public String AdminPage() {
//        return "adminview";
//    }
//
//    @GetMapping("/cancelleradd")
//    public String CancellerAddGet() {
//
//        return "canceller";
//    }
//
//    @PostMapping("/cancelleradd")
//    public String CancellerAddPost(@RequestParam String name,String contact) {
//        Canceller canceller = new Canceller(name,contact);
//        CancelleraddDao dao = new CancelleraddDao();
//
//        int status = dao.createCanceller(canceller);
//        if (status==1){
//            return "success";
//        }
//        return "canceller";
//    }
//
//    @RequestMapping("/bookedtables")
//    public String BookedTablesPage() {
//        return "bookedtables";
//    }
//
//    @RequestMapping("/admintables")
//    public String AdminTablesPage() {
//        return "admintable";
//    }
//}
