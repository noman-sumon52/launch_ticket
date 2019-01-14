/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.StarttimeService;
import com.noman.launcheticket.model.Starttime;
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
public class StarttimeController {

    @Autowired
    StarttimeService startsv;

    @RequestMapping("/Startimepage")
    public ModelAndView showFromstationpage() {
        String Starttimelist = startsv.viewStarttimeService();
        ModelAndView mv = new ModelAndView("addstarttime", "AddStarttimeObject", new Starttime());
        mv.addObject("Starttimelist", Starttimelist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingstarttime", params = "Add")
    public String addaddstation(@ModelAttribute("AddStarttimeObject") Starttime strtime) {
        startsv.insertStarttimeService(strtime);
        return "redirect:/Startimepage";
    }

    @RequestMapping(value = "/addingstarttime", params = "Edit")
    public String editaddstation(@ModelAttribute("AddStarttimeObject") Starttime strtime) {
        startsv.updateStarttimeService(strtime.getStarttimeid(), strtime);
        return "redirect:/Startimepage";
    }

    @RequestMapping("removingstarttime/{Id}")
    public String removeaddaddstation(@PathVariable("Id") int str_id) {
        startsv.deleteStarttimeService(str_id);
        return "redirect:/Startimepage";
    }

    @RequestMapping("/editaddstarttimebutton")
    public ModelAndView passingonecategory(@RequestParam("startid") int str_id) {
        String Starttimelist = startsv.viewStarttimeService();
        ModelAndView mv = new ModelAndView("addstarttime", "AddStarttimeObject", startsv.viewOneStarttimeService(str_id));
        mv.addObject("Starttimelist", Starttimelist);
        mv.addObject("check", "false");
        return mv;
    }
}
