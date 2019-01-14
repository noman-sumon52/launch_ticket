/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Noticeinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author Noman
 */
@Service
public interface NoticeinfoService {

    public String insertNoticeinfo(Noticeinfo notis);

    public String updateNoticeinfo(int noticeinfo_id, Noticeinfo notis);

    public String deleteNoticeinfo(int noticeinfo_id);

    public String viewNoticeinfo();

    public Noticeinfo viewOneNoticeinfo(int noticeinfo_id);

}
