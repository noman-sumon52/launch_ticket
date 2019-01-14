/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.TostationService;
import com.noman.launcheticket.model.Tostation;
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
public class TostationController {

    @Autowired
    TostationService tosv;

    @RequestMapping("/tostationpage")
    public ModelAndView showFromstationpage() {
        String tostlist = tosv.viewToStationService();
        ModelAndView mv = new ModelAndView("addtostation", "AddTostationObject", new Tostation());
        mv.addObject("tostlist", tostlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingtostation", params = "Add")
    public String addaddstation(@ModelAttribute("AddTostationObject") Tostation tostation) {
        tosv.insertToStationService(tostation);
        return "redirect:/tostationpage";
    }

    @RequestMapping(value = "/addingtostation", params = "Edit")
    public String editaddstation(@ModelAttribute("AddTostationObject") Tostation tostation) {
        tosv.updateToStationService(tostation.getTostationid(), tostation);
        return "redirect:/tostationpage";

    }

    @RequestMapping("removingtotation/{Id}")
    public String removeaddaddstation(@PathVariable("Id") int tst_id) {
        tosv.deleteTotationService(tst_id);
        return "redirect:/tostationpage";
    }

    @RequestMapping("/editaddtostationbutton")
    public ModelAndView passingonecategory(@RequestParam("totationid") int tst_id) {
        String tostlist = tosv.viewToStationService();
        ModelAndView mv = new ModelAndView("addtostation", "AddTostationObject", tosv.viewOneToStationService(tst_id));
        mv.addObject("tostlist", tostlist);
        mv.addObject("check", "false");
        return mv;
    }
}
