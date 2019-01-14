/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.CategoryService;
import com.noman.launcheticket.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class CategoryController {

    @Autowired
    CategoryService cat;

    @RequestMapping("/showingcategorypage")
    public ModelAndView showcatpage() {
        String categorygsonlist = cat.viewCategory();
        ModelAndView mv = new ModelAndView("addcabincategory", "addCategoryObject1", new Category());
        mv.addObject("categorymodelobject", categorygsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingcategory", params = "Addcategory")
    public String addcategory(@ModelAttribute("addCategoryObject1") Category cm) {
        cat.insertCategory(cm);
        return "redirect:/showingcategorypage";
    }

    @RequestMapping(value = "/addingcategory", params = "EditCategory")
    public String editcategory(@ModelAttribute("addCategoryObject1") Category cm) {
        cat.updateCategory(cm);
        return "redirect:/showingcategorypage";
    }

    @RequestMapping("removecategory/{Id}")
    public String removecategory(@PathVariable("Id") String categoryId) {
        cat.deleteCategory(categoryId);
        return "redirect:/showingcategorypage";
    }

    @RequestMapping("/editcategorybutton")
    public ModelAndView passingonecategory(@RequestParam("getcid") String categoryId) {
        Category onecategory = cat.viewOneCategory(categoryId);
        String categorygsonlist = cat.viewCategory();
        ModelAndView mv = new ModelAndView("addcabincategory", "addCategoryObject1", onecategory);
        mv.addObject("categorymodelobject", categorygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
