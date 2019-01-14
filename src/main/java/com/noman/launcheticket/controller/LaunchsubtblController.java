/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.CategoryService;
import com.noman.launcheticket.dao.LaunchinfoService;
import com.noman.launcheticket.dao.LaunchsubtblService;

import com.noman.launcheticket.model.Launchsubtbl;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author noman
 */
@Controller
public class LaunchsubtblController {

    @Autowired
    LaunchsubtblService cab;
    @Autowired
    LaunchinfoService ls;
    @Autowired
    CategoryService cats;
    

    @RequestMapping("/showcsublaunchpage")
    public ModelAndView showLaunchinfopage() {
        String Launchsublist = cab.viewLaunchsubtbl();
        String launchins = ls.viewLaunch();
        String categolist = cats.viewCategory();
        ModelAndView mv = new ModelAndView("addsublaunch", "launchsubObject", new Launchsubtbl());
        mv.addObject("launchins", launchins);
        mv.addObject("Launchsublist", Launchsublist);
        mv.addObject("categolist", categolist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingsublaunchinfo", params = "Add")
    public String addproductpage(@ModelAttribute("launchsubObject") Launchsubtbl cabin) {
        cab.insertLaunchsubtbl(cabin);
        return "redirect:/showcsublaunchpage";
    }

    @RequestMapping(value = "/addingsublaunchinfo", params = "Edit")
    public String editProduct(@ModelAttribute("launchsubObject") Launchsubtbl cabin) {
        cab.updateLaunchsubtbl(cabin.getLaunchsubid(), cabin);
        return "redirect:/showcsublaunchpage";
    }

    @RequestMapping("/viewcabin")
    public ModelAndView viewLaunch(@RequestParam("getId") int sublaunch_id, HttpSession session) {
        Gson g = new Gson();
        String cabin = g.toJson(cab.viewOneLaunchsubtbl(sublaunch_id));
        ModelAndView mv = new ModelAndView("launchsubObject");
        return mv;
    }

    @RequestMapping("/editlaunchsubbutton")
    public ModelAndView editLaunchsubpage(@RequestParam("lsubId") int sublaunch_id) {
        String launchins = ls.viewLaunch();
        String Launchsublist = cab.viewLaunchsubtbl();
        String categolist = cats.viewCategory();
        ModelAndView mv = new ModelAndView("addsublaunch", "launchsubObject", cab.viewOneLaunchsubtbl(sublaunch_id));
        System.out.println("..................."+cab.viewOneLaunchsubtbl(sublaunch_id));
        mv.addObject("launchins", launchins);
        mv.addObject("Launchsublist", Launchsublist);
        mv.addObject("categolist", categolist);
        mv.addObject("check", "false");
        return mv;
         
    }
        

    @RequestMapping("removinglaunchsubbtn/{lnsubid}")
    public String removeLaunchsub(@PathVariable("lnsubid") int sublaunch_id) {
        cab.deleteLaunchsubtbl(sublaunch_id);
        return "redirect:/showcsublaunchpage";
    }
    
}
