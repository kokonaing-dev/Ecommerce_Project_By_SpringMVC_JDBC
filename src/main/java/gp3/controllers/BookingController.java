package gp3.controllers;

import gp3.daos.AddingtableDao;
import gp3.daos.BookingDao;
import gp3.models.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BookingController {
    @GetMapping("/booking")
    public String createBookingGet(HttpSession session, TableBook tb) {
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

        return "booking";
    }


    @PostMapping("/booking")
    public String createBookingPost(@RequestParam String date, @RequestParam String time, @RequestParam int customerid, HttpServletRequest request , HttpServletResponse response) {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        BookingDao dao = new BookingDao();
        int bookingStatus = 0;

        Booking booking = new Booking(date, time, customerid);
        int generatedBookingId = dao.createBooking(booking);
        session.setAttribute("datedate",date);
        session.setAttribute("timetime",time);

        if (generatedBookingId != 0) {
            // Store the generated booking ID in the session for later use.
            session.setAttribute("generatedBookingId", generatedBookingId);
            System.out.println(generatedBookingId);
            return "bookingtable";
        }

        return "booking";
    }


//    @PostMapping("/booking")
//    public String createBookingPost(@RequestParam String date, @RequestParam String time, @RequestParam int customerid, HttpServletRequest request , HttpServletResponse response) {
//        HttpSession session = request.getSession();
//        Customer customer = (Customer) session.getAttribute("customer");
//        BookingDao dao = new BookingDao();
//        int bookingStatus = 0;
//
//
//
////        for (String table : tables) {
////            BookingDetail bookingDetail = new BookingDetail(table,bookingid);
////            bookingDetailStatus = dao.createBookingDetail(bookingDetail,bookingid);
////
////            // If any createBookingDetail operation fails, break the loop
////            if (bookingDetailStatus != 1) {
////                break;
////            }
////        }
//
//
//            Booking booking = new Booking(date, time,customerid);
//        if (booking != null){
//            session.setAttribute("bookingid", booking.getBookingid());
//            session.setAttribute("booking", booking);
//        }
//            bookingStatus = dao.createBooking(booking);
////            Booking bk = new Booking();
////            int bookid = bk.getBookingid();
////            System.out.println(bookid);
//            if (bookingStatus == 1) {
//                return "successful";
//            }
//
//        return "booking";
//    }

    @GetMapping("/bookingtable")
    public String createBookingTableGet() {
        return "bookingtable";
    }

    @PostMapping("/bookingtable")
    public String createBookingTablePost(@RequestParam(name = "tables[]") List<String> tables, HttpServletRequest request , HttpServletResponse response) {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        BookingDao dao = new BookingDao();
        int bookingDetailStatus = 0;
        int bookingStatus = 0;

        // Get the generated booking ID from the session.
        Integer generatedBookingId = (Integer) session.getAttribute("generatedBookingId");

        if (generatedBookingId != null) {
            for (String table : tables) {
                BookingDetail bookingDetail = new BookingDetail(table, generatedBookingId);
                bookingDetailStatus = dao.createBookingDetail(bookingDetail);

                // If any createBookingDetail operation fails, break the loop
                if (bookingDetailStatus != 1) {
                    break;
                }
            }

            if (bookingDetailStatus == 1) {
                return "success";
            }
        }

        return "index";
    }


//
//    @PostMapping("/bookingtable")
//    public String createBookingTablePost(@RequestParam(name = "tables[]") List<String> tables,@RequestParam int bookingid, HttpServletRequest request , HttpServletResponse response) {
//        HttpSession session = request.getSession();
//        Customer customer = (Customer) session.getAttribute("customer");
//        BookingDao dao = new BookingDao();
//        int bookingDetailStatus = 0;
//        int bookingStatus = 0;
//
//        for (String table : tables) {
////            Booking bk = new Booking();
////            int bookid = bk.getBookingid();
////            System.out.println(bookid);
//            BookingDetail bookingDetail = new BookingDetail(table,bookingid);
//            bookingDetailStatus = dao.createBookingDetail(bookingDetail);
//
//            // If any createBookingDetail operation fails, break the loop
//            if (bookingDetailStatus != 1) {
//                break;
//            }
//        }
//
////        for (String table : tables) {
////            BookingDetail bookingDetail = new BookingDetail(table,bookingid);
////            bookingDetailStatus = dao.createBookingDetail(bookingDetail,bookingid);
////
////            // If any createBookingDetail operation fails, break the loop
////            if (bookingDetailStatus != 1) {
////                break;
////            }
////        }
//
//        if (bookingDetailStatus == 1) {
//                return "success";
//        }
//
//        return "booking";
//    }
}
