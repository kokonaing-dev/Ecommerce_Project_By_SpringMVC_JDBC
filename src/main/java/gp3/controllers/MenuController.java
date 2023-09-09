package gp3.controllers;

import gp3.impls.CategoryImpl;
import gp3.impls.MenuImpl;
import gp3.models.Category;
import gp3.models.Menu;
import gp3.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class MenuController {

    @Autowired
    private MenuImpl menuImpl;

    @Autowired
    private CategoryImpl categoryImpl;

    //create menu
    @GetMapping("/admin/menu_create")
    public String createMenuGet(Model model) {
        List<Category> categories = categoryImpl.getAllCategories();
        model.addAttribute("menu", new Menu());
        model.addAttribute("categories",categories);
        return "admin/create_menu";
    }
    @PostMapping("/admin/menu_create")
    public String creatMenuPost(@ModelAttribute("menu") Menu menu, Model model,
                                HttpServletRequest request) {
        MultipartFile file = menu.getFile();
        if (file != null && !file.isEmpty()) {
            String image = saveImage(file, request);
            menu.setImage(image);
        }
        System.out.println(menu);
        int status = menuImpl.createMenu(menu);
        if (status > 0) {
            System.out.println("Save Successfully");
            return "redirect:/menu";
        }
        return "redirect:/test";
    }

    //delete menu
    @GetMapping("/admin/menu_delete")
    public String deleteMenu(@RequestParam int id , HttpServletRequest request){
            int status = menuImpl.deleteMenu(id);
            if (status == 1){
                return "redirect:/menu/view";
            }
            else {
                return "test";
            }
    }

    //update menu
    @GetMapping("/admin/menu_update")
    public String updateMenuGet(@RequestParam("id")int id  ,Model model){
        Menu menu = menuImpl.getMenuById(id);
        model.addAttribute("menu",menu);
        return "admin/edit_menu";
    }
    @PostMapping("/admin/menu_update")
    public String updateMenuPost(@ModelAttribute("menu") Menu menu,
                                 HttpServletRequest request){
        MultipartFile file = menu.getFile();
        if (file != null && !file.isEmpty()){
            String image = saveImage(file,request);
            menu.setImage(image);
        }
        int status = menuImpl.editMenu(menu);
        if (status == 1){
            return "redirect:/menu";
        }
        else {
            return "test";
        }
    }

    //view menu
    @GetMapping("/menu")
    public String viewMenu(Model model, HttpServletRequest request) {
//        User user = (User) request.getSession().getAttribute("user");
//        System.out.println(user);
        List<Category> categories = categoryImpl.getAllCategories();
        model.addAttribute("categories",categories);
        List<Menu> menus = menuImpl.getAllMenu();
        model.addAttribute("menu", menus);
        return "menu";
    }

    //search
    @GetMapping("/menu/search")
    public String searchMenuGet(){
        return "menu";
    }
    @PostMapping("/menu/search")
    public String searchMenuPost(@RequestParam("search") String search , Model model){
        List<Category> categories = categoryImpl.getAllCategories();
        model.addAttribute("categories",categories);
        List<Menu> menus = menuImpl.searchMenu(search);
        model.addAttribute("menu",menus);
        return "menu";
    }


    // menu view by category
    @GetMapping("/menu/{id}")
    public String breakfast(@PathVariable("id") int cat_id,Model model){
        System.out.println(cat_id);
        List<Category> categories = categoryImpl.getAllCategories();
        model.addAttribute("categories",categories);
        List<Menu> menus = menuImpl.getCatMenu(cat_id);
        model.addAttribute("menu",menus);
        return "menu";
    }


    //image save extract method
    private String saveImage(MultipartFile file, HttpServletRequest request){
        String image = System.currentTimeMillis() + ".png" ;
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory + "/WEB-INF/assets/imgs/" + image);
        if (file != null && !file.isEmpty()) {
            try {
                file.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return image ;
    }

}
