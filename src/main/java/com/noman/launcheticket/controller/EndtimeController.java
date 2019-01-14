/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;



import com.noman.launcheticket.dao.EndtimeService;
import com.noman.launcheticket.model.Endtime;
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
public class EndtimeController {

    @Autowired
    EndtimeService endsv;

    @RequestMapping("/endtimepage")
    public ModelAndView showEndtimepage() {
        String endtimelist = endsv.viewEndtimeService();
        ModelAndView mv = new ModelAndView("addendtime", "AddendtimeObject", new Endtime());
        mv.addObject("endtimelist", endtimelist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingendtime", params = "Add")
    public String addEndtime(@ModelAttribute("AddendtimeObject") Endtime endtime) {
        endsv.insertEndtimeService(endtime);
        return "redirect:/endtimepage";
    }

    @RequestMapping(value = "/addingendtime", params = "Edit")
    public String ediEndtime(@ModelAttribute("AddendtimeObject") Endtime endtime) {
        endsv.updateEndtimeService(endtime.getEndtimeid(), endtime);
        return "redirect:/endtimepage";
    }

    @RequestMapping("removingfromstation/{endid}")
    public String removeingEndtime(@PathVariable("endid") int end_id) {
        endsv.deleteEndtimeService(end_id);
        return "redirect:/endtimepage";
    }

    @RequestMapping("/editaddendtimebutton")
    public ModelAndView passingonecategoryEndtime(@RequestParam("endid") int end_id) {
        String endtimelist = endsv.viewEndtimeService();
        ModelAndView mv = new ModelAndView("addendtime", "AddendtimeObject", endsv.viewOneEndtimeService(end_id));
        mv.addObject("endtimelist", endtimelist);
        mv.addObject("check", "false");
        return mv;
    }
}
