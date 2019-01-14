/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.CategoryService;
import com.noman.launcheticket.dao.EndtimeService;
import com.noman.launcheticket.dao.FareChartService;
import com.noman.launcheticket.dao.FromstationService;
import com.noman.launcheticket.dao.LaunchinfoService;
import com.noman.launcheticket.dao.LaunchsubtblService;
import com.noman.launcheticket.dao.PassengerInfoService;
import com.noman.launcheticket.dao.ReservationService;
import com.noman.launcheticket.dao.StarttimeService;
import com.noman.launcheticket.dao.TostationService;
import com.noman.launcheticket.dao.Userservice;
import com.noman.launcheticket.model.FareChart;
import com.noman.launcheticket.model.Launchinfo;
import com.noman.launcheticket.model.Launchsubtbl;
import com.noman.launcheticket.model.PassengerInfo;
import com.noman.launcheticket.model.Reservation;
import com.noman.launcheticket.model.ReservationDetails;
import com.noman.launcheticket.model.User;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import static javafx.application.Application.launch;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author noman
 */
@Controller
public class LaunchinfoController {

    @Autowired
    LaunchinfoService lns;
    @Autowired
    CategoryService cats;
    @Autowired
    FromstationService frm;
    @Autowired
    TostationService tost;
    @Autowired
    StarttimeService strt;
    @Autowired
    EndtimeService end;
    @Autowired
    LaunchsubtblService subl;
    @Autowired
    ReservationService rss;
    @Autowired
    Userservice us;
    @Autowired
    PassengerInfoService psdao;
    @Autowired
    FareChartService faredao;

    @Autowired
    private ServletContext servletContext;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "d", new CustomDateEditor(format, false));
        
    }
    @RequestMapping("/launchmapingpage")
    public ModelAndView showLaunchinfopage() {
        String launchlists = lns.viewLaunch();
        String categorylist = cats.viewCategory();
        String fromstlist = frm.viewFromStationService();
        String tostlist = tost.viewToStationService();
        String stratttimes = strt.viewStarttimeService();
        String endtimes = end.viewEndtimeService();
        String sublaunchlist = subl.viewLaunchsubtbl();
        ModelAndView mv = new ModelAndView("addlaunchpage", "launchinfoObject", new Launchinfo());
        mv.addObject("launchlists", launchlists);
        mv.addObject("categorylist", categorylist);
        mv.addObject("fromstlist", fromstlist);
        mv.addObject("tostlist", tostlist);
        mv.addObject("stratttimes", stratttimes);
        mv.addObject("endtimes", endtimes);
        mv.addObject("sublaunchlist", sublaunchlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addinglaunchinfo", params = "Add")
    public String addproductpage(@ModelAttribute("launchinfoObject") Launchinfo launchinfo, HttpServletRequest request) {
        lns.insertLaunch(launchinfo);
        String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut1 = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = targetcut1.substring(0, targetcut1.lastIndexOf("\\"));
        String p = targetcut + "\\src\\main\\webapp\\resources\\pimage\\" + String.valueOf(launchinfo.getLaunchid()) + "" + ".jpg";
        System.out.println(p);
        MultipartFile filedet = launchinfo.getPimage();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                bs.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File Uploaded Successfully");
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        return "redirect:/launchmapingpage";
    }

    @RequestMapping(value = "/addinglaunchinfo", params = "Edit")
    public String editProduct(@ModelAttribute("newProductObject") Launchinfo launchinfo, HttpServletRequest request) {
        lns.updateLaunch(launchinfo.getLaunchid(), launchinfo);
        String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut1 = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = targetcut1.substring(0, targetcut1.lastIndexOf("\\"));
        System.out.println(targetcut);
        String p = targetcut + "\\src\\main\\webapp\\resources\\pimage\\" + String.valueOf(launchinfo.getLaunchid()) + "" + ".jpg";
        MultipartFile filedet = launchinfo.getPimage();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                File f = new File(p);
                if (f.exists()) {
                    f.delete();
                    FileOutputStream fos = new FileOutputStream(f);
                    BufferedOutputStream bs = new BufferedOutputStream(fos);
                    bs.write(bytes);
                    bs.close();
                    fos.close();
                    Thread.sleep(10000);
                    System.out.println("File Uploaded Successfully");
                }
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        return "redirect:/launchmapingpage";
    }

    @RequestMapping("/viewlaunch")
    public ModelAndView viewproductdata(@RequestParam("getId") int launch_id, HttpSession session) {
        Gson g = new Gson();
        String lnss = g.toJson(lns.viewOneLaunch(launch_id));
        ModelAndView mv = new ModelAndView("launchinfoObject");
        return mv;
    }

    @RequestMapping("/editlaunchinfo")
    public ModelAndView editLaunchpage(@RequestParam("getpid") int launch_id) {
        String launchlists = lns.viewLaunch();
        String categorylist = cats.viewCategory();
        String fromstlist = frm.viewFromStationService();
        String tostlist = tost.viewToStationService();
        String stratttimes = strt.viewStarttimeService();
        String endtimes = end.viewEndtimeService();
        String sublaunchlist = subl.viewLaunchsubtbl();
        ModelAndView mv = new ModelAndView("addlaunchpage", "launchinfoObject", lns.viewOneLaunch(launch_id));
        mv.addObject("launchlists", launchlists);
        mv.addObject("categorylist", categorylist);
        mv.addObject("fromstlist", fromstlist);
        mv.addObject("tostlist", tostlist);
        mv.addObject("stratttimes", stratttimes);
        mv.addObject("endtimes", endtimes);
        mv.addObject("sublaunchlist", sublaunchlist);
        mv.addObject("check", "false");
        return mv;
    }

    @RequestMapping("removinglaunch/{launchId}")
    public String removeproduct(@PathVariable("launchId") int launch_id) {
        lns.deleteLaunch(launch_id);
        return "redirect:/launchmapingpage";
    }

//    ============================>
    @RequestMapping("/availablelaunchpage")
    public ModelAndView SearchPage(HttpSession session, Launchinfo launchinfo) {
        String launchforlist = lns.viewLaunch();
        String fromstslist = frm.viewFromStationService();
        String tostlist = tost.viewToStationService();
        ModelAndView mv = new ModelAndView("launchsearch", "addsearchoneObject", new Launchinfo());
        mv.addObject("launchforlist", launchforlist);
        mv.addObject("fromstslist", fromstslist);
        mv.addObject("tostlist", tostlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping("/addviewdestinationObject")
    public ModelAndView SearchPage(@ModelAttribute("addsearchoneObject") Launchinfo launchinfo, HttpSession session) {
        String dd = new SimpleDateFormat("yyyy/MM/dd").format(launchinfo.getD());
        session.setAttribute("d", dd);
        session.setAttribute("Launchnumber", launchinfo.getLaunchnumber());
        session.setAttribute("Launchid", launchinfo.getLaunchid());
        session.setAttribute("dayoff", launchinfo.getDayoff());
        String a = lns.SearchLaunch(launchinfo);
        ModelAndView mv = new ModelAndView("viewdestination", "addsearchoneObject", new Launchinfo());
        mv.addObject("launchforlist", a);
        mv.addObject("check", "true");
        return mv;
    }

//    ===================>
    @RequestMapping("/buyticet")
    public ModelAndView showreservepagebyserchtrain(@RequestParam("gettid") int launch_id, Launchinfo linfo, HttpSession session) {
        Launchinfo info = lns.viewOneLaunch(launch_id);
        session.setAttribute("catids", info.getCatid());
        session.setAttribute("dayoffs", info.getDayoff());
        session.setAttribute("starttimeids", info.getStarttimeid());
        session.setAttribute("endtimeids", info.getCatid());
        session.setAttribute("fromstationids", info.getFromstationid());
        session.setAttribute("tostationids", info.getTostationid());
        session.setAttribute("launchids", info.getLaunchid());
        session.setAttribute("launchnames", info.getLaunchname());
        session.setAttribute("launchnumbers", info.getLaunchnumber());
        String launchlists = lns.viewLaunch();
        String reservationlist = rss.viewLaunchReservation();
        String categorylist = cats.viewCategory();
        ModelAndView mv = new ModelAndView("addreservation", "viewtrainlistc", new Reservation());
        mv.addObject("launchlists", launchlists);
        mv.addObject("reservationlist", reservationlist);
        mv.addObject("categorylist", categorylist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping("/reservationpage")
    public ModelAndView showreservationpage(@ModelAttribute("viewtrainlistc") Reservation re, HttpSession session) {
        String launchinfolist = lns.viewLaunch();
        String reservationlist = rss.viewLaunchReservation();
        String categorylist = cats.viewCategory();
        session.setAttribute("launchid", re.getLaunchid());
        session.setAttribute("launchnumber", re.getLaunchnumber());
        session.setAttribute("launchname", re.getLaunchname());
        session.setAttribute("starttimeid", re.getStarttimeid());
        session.setAttribute("endtimeid", re.getEndtimeid());
        ModelAndView mv = new ModelAndView("addreservation", "viewtrainlistc", new Reservation());
        mv.addObject("launchinfolist", launchinfolist);
        mv.addObject("reservationlist", reservationlist);
        mv.addObject("categorylist", categorylist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/reservationadd", params = "AddReser")
    public String addReservationpage(@ModelAttribute("viewtrainlistc") Reservation rv) {

        //   rv.setPassid(Integer.parseInt(session.getAttribute("passid").toString()));
        rv.setPtn((int) (Math.random() * 100000));
//        rv.setFromstationid(session.getAttribute("fromstationid").toString());
//        rv.setTostationid(session.getAttribute("tostationid").toString());
//        rv.setFromstationid(session.getAttribute("stime").toString());
//        rv.setTostationid(session.getAttribute("etime").toString());
//        String vv = session.getAttribute("fromstationid").toString();
//        String tt = session.getAttribute("tostationid").toString();
//        String ss = fc.getCabinname();
//        FareChart farechart = faredao.viewOneFareChartbyStation(vv, tt, ss);
        rss.insertLaunchReservation(rv);
        return "redirect:/reservationpage";
    }

}
