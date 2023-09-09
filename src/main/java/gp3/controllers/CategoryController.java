package gp3.controllers;

import gp3.impls.CategoryImpl;
import gp3.models.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CategoryController {

    @Autowired
    CategoryImpl categoryImpl;

    @GetMapping("/admin/category_create")
    private String createCategoryGet(){
        return "create_category";
    }
    @PostMapping("/admin/category_create")
    private String createCategoryPost(@RequestParam("category")String category){
        Category cat = new Category(category);
        int result = categoryImpl.createCategory(cat);
        return "redirect:/test";
    }
}
