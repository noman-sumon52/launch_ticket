/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;


import com.noman.launcheticket.dao.Userservice;
import com.noman.launcheticket.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    Userservice us;
            
    
    @RequestMapping("/signup")
    public ModelAndView signUpPage() {
        ModelAndView mv = new ModelAndView("signup");
        mv.addObject("urm", new User());
        return mv;
    }
    
    @RequestMapping(value= "/reguser", method = RequestMethod.POST)
    public ModelAndView reguser(@ModelAttribute("urm") User urm1) {
        String result = us.insertUser(urm1);

        if (result.equalsIgnoreCase("success")) {
            ModelAndView mv = new ModelAndView("login");
            mv.addObject(result, "success");
            return mv;
        } else {
            ModelAndView mv = new ModelAndView("signup");
            mv.addObject(result, "fail");
            return mv;
        }
    }
}
