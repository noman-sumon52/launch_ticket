package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.Userservice;
import com.noman.launcheticket.model.User;
import java.util.Collection;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @Autowired
    Userservice user;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        return "login";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String showWelcome() {
        return "welcome";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String showIndex() {
        return "index";
    }

    @RequestMapping(value = "/loginsuccess")
    public String loginsuccess(HttpSession session) {
        System.out.println("success..........");

        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        User us = user.viewUser(userid);
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        String page = "";
        String role = "ROLE_ADMIN";
        String role1 = "ROLE_USER";
        for (GrantedAuthority authority : authorities) {
            if (authority.getAuthority().equals(role)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("UserId", userid);
                page = "redirect:/welcome";
            } else if (authority.getAuthority().equals(role1)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("UserEmail", us.getEmailid());
                session.setAttribute("UserId", userid);
                page = "redirect:/index";
            } else {
                page = "redirect:/";
            }

        }
        return page;
    }
}
