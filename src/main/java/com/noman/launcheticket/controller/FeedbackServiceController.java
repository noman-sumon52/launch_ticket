/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.FeedbackService;
import com.noman.launcheticket.dao.PassengerInfoService;
import com.noman.launcheticket.model.Feedback;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
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
 * @author C14
 */
@Controller
public class FeedbackServiceController {

    @Autowired
    FeedbackService feeds;
    @Autowired
    PassengerInfoService passer;
    private ServletContext servletContext;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "feddate", new CustomDateEditor(format, false));
    }

    @RequestMapping("/feedbackemap")
    public ModelAndView showfeedbackpage() {
        String FeedbackServicelist = feeds.viewFeedback();
        String PassengerInfoServicelist = passer.viewPassengerinfo();
        ModelAndView mv = new ModelAndView("addfeedbackpage", "addfeedbackObject", new Feedback());
        mv.addObject("FeedbackServicelist", FeedbackServicelist);
        mv.addObject("PassengerInfoServicelist", PassengerInfoServicelist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingfeedback", params = "Add")
    public String addfeedback(@ModelAttribute("addfeedbackObject") Feedback feedobj) {
        feeds.insertFeedback(feedobj);
        return "redirect:/feedbackemap";
    }

    @RequestMapping(value = "/addingfeedback", params = "Edit")
    public String editaddfeedback(@ModelAttribute("addfeedbackObject") Feedback feedobj) {
        feeds.updateFeedback(feedobj.getFeedid(), feedobj);

        return "redirect:/feedbackemap";
    }

    @RequestMapping("removeafeedback/{feedid}")
    public String removefeedback(@PathVariable("feedid") int fd_id) {
        feeds.deleteFeedback(fd_id);
        return "redirect:/feedbackemap";
    }

    @RequestMapping("/editfeedbackbutton")
    public ModelAndView feedbackOneCategory(@RequestParam("feedid") int feedid) {
        String FeedbackServicelist = feeds.viewFeedback();
        String PassengerInfoServicelist = passer.viewPassengerinfo();
        ModelAndView mv = new ModelAndView("addfeedbackpage", "addfeedbackObject", FeedbackServicelist);
        mv.addObject("FeedbackServicelist", FeedbackServicelist);
        mv.addObject("PassengerInfoServicelist", PassengerInfoServicelist);
        mv.addObject("check", "false");
        return mv;
    }

}
