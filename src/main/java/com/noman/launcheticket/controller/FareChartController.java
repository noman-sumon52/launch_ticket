package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.FareChartService;
import com.noman.launcheticket.dao.FromstationService;
import com.noman.launcheticket.dao.LaunchinfoService;
import com.noman.launcheticket.dao.LaunchsubtblService;
import com.noman.launcheticket.dao.PassengerInfoService;
import com.noman.launcheticket.dao.TostationService;
import com.noman.launcheticket.model.FareChart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FareChartController {

    @Autowired
    FareChartService fcdao;
    @Autowired
    LaunchinfoService tidao;
    @Autowired
    LaunchsubtblService ctsdao;
    @Autowired
    PassengerInfoService ptsdao;
    @Autowired
    FromstationService fssdao;
    @Autowired
    TostationService tossdao;

    @RequestMapping("/farechartpage")
    public ModelAndView showfareChartpage() {
        String farechartlist = fcdao.viewFareChart();
        String launchinfolist = tidao.viewLaunch();
        String launchsubtypelist = ctsdao.viewLaunchsubtbl();
        String passengertypelist = ptsdao.viewPassengerinfo();
        String fromstationservlist = fssdao.viewFromStationService();
        String tostationservlist = fssdao.viewFromStationService();

        ModelAndView mv = new ModelAndView("fareamount", "newfarechartObject", new FareChart());
        mv.addObject("farechartlist", farechartlist);
        mv.addObject("launchinfolist", launchinfolist);
        mv.addObject("launchsubtypelist", launchsubtypelist);
        mv.addObject("passengertypelist", passengertypelist);
        mv.addObject("fromstationservlist", fromstationservlist);
        mv.addObject("tostationservlist", tostationservlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/farechartvaluadd", params = "AddFare")
    public String addproductpage(@ModelAttribute("newfarechartObject") FareChart fc) {
        fcdao.insertFareChart(fc);

        return "redirect:/farechartpage";
    }

    @RequestMapping(value = "/farechartvaluadd", params = "EditFare")
    public String editProduct(@ModelAttribute("newfarechartObject") FareChart fc) {
        fcdao.updateFareChart(fc.getFareid(), fc);

        return "redirect:/farechartpage";
    }

    @RequestMapping("removingfarechart/{fid}")
    public String removeproduct(@PathVariable("fid") int fid) {
        fcdao.deleteFareChart(fid);
        return "redirect:/farechartpage";
    }

    @RequestMapping("/editingfarechart")
    public ModelAndView editproductpage(@RequestParam("getfid") int fid) {
        String farechartlist = fcdao.viewFareChart();
        String launchinfolist = tidao.viewLaunch();
        String launchsubtypelist = ctsdao.viewLaunchsubtbl();
        String passengertypelist = ptsdao.viewPassengerinfo();
        String fromstationservlist = fssdao.viewFromStationService();
        String tostationservlist = fssdao.viewFromStationService();
        ModelAndView mv = new ModelAndView("fareamount", "newfarechartObject", fcdao.viewOneFareChart(fid));
        mv.addObject("farechartlist", farechartlist);
        mv.addObject("launchinfolist", launchinfolist);
        mv.addObject("launchsubtypelist", launchsubtypelist);
        mv.addObject("passengertypelist", passengertypelist);
        mv.addObject("fromstationservlist", fromstationservlist);
        mv.addObject("tostationservlist", tostationservlist);
        mv.addObject("check", "false");
        return mv;
    }
}
