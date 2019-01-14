/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.FromstationService;
import com.noman.launcheticket.model.Fromstation;
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
public class FromstationController {

    @Autowired
    FromstationService fsv;

    @RequestMapping("/fromstationpage")
    public ModelAndView showFromstationpage() {
        String fromstlist = fsv.viewFromStationService();
        ModelAndView mv = new ModelAndView("addfromstation", "AddFromstationObject", new Fromstation());
        mv.addObject("fromstlist", fromstlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingfromstation", params = "Add")
    public String addaddstation(@ModelAttribute("AddFromstationObject") Fromstation fstation) {
        fsv.insertFromStationService(fstation);
        return "redirect:/fromstationpage";
    }

    @RequestMapping(value = "/addingfromstation", params = "Edit")
    public String editaddstation(@ModelAttribute("AddFromstationObject") Fromstation fstation) {
        fsv.updateFromStationService(fstation.getFromstationid(), fstation);
        return "redirect:/fromstationpage";
    }

    @RequestMapping("removingfromstationbutton/{fromstationid}")
    public String removeaddaddstation(@PathVariable("fromstationid") int f_id) {
        fsv.deleteFromtationService(f_id);
        return "redirect:/fromstationpage";
    }

    @RequestMapping("/editaddfromstationbutton")
    public ModelAndView passingonecategory(@RequestParam("fromstationid") int f_id) {
        String fromstlist = fsv.viewFromStationService();
        ModelAndView mv = new ModelAndView("addfromstation", "AddFromstationObject", fsv.viewOneFromStationService(f_id));
        mv.addObject("fromstlist", fromstlist);
        mv.addObject("check", "false");
        return mv;
    }
}

//01731-823950
