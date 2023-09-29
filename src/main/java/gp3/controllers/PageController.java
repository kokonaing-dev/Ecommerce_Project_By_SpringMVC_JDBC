package gp3.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }

    @RequestMapping("/book")
    public String book(){
        return "book";
    }

    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping("/card")
    public String card(){
        return "menu/card";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}