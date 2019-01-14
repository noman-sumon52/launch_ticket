/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.EndtimeService;
import com.noman.launcheticket.dao.FromstationService;
import com.noman.launcheticket.model.PassengerInfo;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.noman.launcheticket.dao.PassengerInfoService;
import com.noman.launcheticket.dao.StarttimeService;

import com.noman.launcheticket.dao.TostationService;

/**
 *
 * @author dhaka
 */
@Controller
public class PassengerInfoController {

    @Autowired
    PassengerInfoService pssv;
    @Autowired
    FromstationService fsts;
    @Autowired
    TostationService tosts;
    @Autowired
    StarttimeService strtsv;
    @Autowired
    EndtimeService endsv;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "ticketpurdate", new CustomDateEditor(format, false));
        binder.registerCustomEditor(Date.class, "tickettakendate", new CustomDateEditor(format, false));
    }

    @RequestMapping("/passengerinfopagemap")
    public ModelAndView showPassengerinfopage() {

        String passengerlist = pssv.viewPassengerinfo();
        String fromstationtlist = fsts.viewFromStationService();
        String tostationtlist = tosts.viewToStationService();
        String starttimelist = strtsv.viewStarttimeService();
        String endtimelist = endsv.viewEndtimeService();
        ModelAndView mv = new ModelAndView("addpassengerinfo", "Passengerinfobject", new PassengerInfo());
        mv.addObject("passengerlist", passengerlist);
        mv.addObject("fromstationtlist", fromstationtlist);
        mv.addObject("tostationtlist", tostationtlist);
          mv.addObject("starttimelist", starttimelist);
        mv.addObject("endtimelist", endtimelist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingpassinfo", params = "Add")
    public String addPassengerinfopage(@ModelAttribute("Passengerinfobject") PassengerInfo passinfo) {
        pssv.insertPassengerinfo(passinfo);
        return "redirect:/passengerinfopagemap";
    }

    @RequestMapping(value = "/addingpassinfo", params = "Edit")
    public String editPassengerinfo(@ModelAttribute("Passengerinfobject") PassengerInfo passinfo) {
        pssv.updatePassengerinfo(passinfo.getPassid(), passinfo);
        return "redirect:/passengerinfopagemap";
    }

    @RequestMapping("/editpassengerinfo")
    public ModelAndView editpassengerinfopage(@RequestParam("getpid") int lid) {
        String passengerlist = pssv.viewPassengerinfo();
        String fromstationtlist = fsts.viewFromStationService();
        String tostationtlist = tosts.viewToStationService();
        String starttimelist = strtsv.viewStarttimeService();
        String endtimelist = endsv.viewEndtimeService();
        ModelAndView mv = new ModelAndView("addpassengerinfo", "Passengerinfobject", pssv.viewonePassengerinfo(lid));
        mv.addObject("passengerlist", passengerlist);
        mv.addObject("fromstationtlist", fromstationtlist);
        mv.addObject("tostationtlist", tostationtlist);
        mv.addObject("tostationtlist", tostationtlist);
        mv.addObject("starttimelist", starttimelist);
        mv.addObject("endtimelist", endtimelist);
        mv.addObject("check", "false");
        return mv;
    }

    @RequestMapping("removingpassengerinfo/{infoId}")
    public String removepassengerinfo(@PathVariable("infoId") int info_id) {
        pssv.deletePassengerinfo(info_id);
        return "redirect:/passengerinfopagemap";
    }

}
