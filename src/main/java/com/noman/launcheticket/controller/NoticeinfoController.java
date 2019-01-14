/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.controller;

import com.noman.launcheticket.dao.NoticeinfoService;
import com.noman.launcheticket.model.Noticeinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Noman
 */
@Controller
public class NoticeinfoController {

    @Autowired
    NoticeinfoService ns;

    @RequestMapping("/notincemap")
    public ModelAndView showNoticeinfoinfopage() {
        String notinceinfolist = ns.viewNoticeinfo();
        ModelAndView mv = new ModelAndView("addnoticejsp", "notinceinfoObject", new Noticeinfo());
        mv.addObject("notinceinfolist", notinceinfolist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingnotinceinfo", params = "Add")
    public String addNoticeinfopage(@ModelAttribute("notinceinfoObject") Noticeinfo noticeinfo) {
        ns.insertNoticeinfo(noticeinfo);
        return "redirect:/notincemap";
    }

    @RequestMapping(value = "/addingnotinceinfo", params = "Edit")
    public String editNoticeinfo(@ModelAttribute("notinceinfoObject") Noticeinfo noticeinfo) {
        ns.updateNoticeinfo(noticeinfo.getNoticeid(), noticeinfo);
        return "redirect:/notincemap";

    }

    @RequestMapping("/editingnoticeinfo")
    public ModelAndView editNoticeinfopage(@RequestParam("getpid") int noticeinfo) {
        String notinceinfolist = ns.viewNoticeinfo();
        ModelAndView mv = new ModelAndView("addnoticejsp", "notinceinfoObject", ns.viewOneNoticeinfo(noticeinfo));
        mv.addObject("notinceinfolist", notinceinfolist);
        mv.addObject("check", "fasle");
        return mv;
    }

    @RequestMapping("removingnoticeinfo/{infoId}")
    public String removeNotice(@PathVariable("infoId") int noticeinfoid) {
        ns.deleteNoticeinfo(noticeinfoid);
        return "redirect:/notincemap";
    }
}
