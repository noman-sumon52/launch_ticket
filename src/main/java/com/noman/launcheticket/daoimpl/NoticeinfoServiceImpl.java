/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.NoticeinfoService;
import com.noman.launcheticket.model.Noticeinfo;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Noman
 */
@Repository
public class NoticeinfoServiceImpl implements NoticeinfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertNoticeinfo(Noticeinfo notis) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(notis);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateNoticeinfo(int noticeinfo_id, Noticeinfo notis) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Noticeinfo onenoticebject = (Noticeinfo) s.get(Noticeinfo.class, noticeinfo_id);
        s.update(onenoticebject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteNoticeinfo(int noticeinfo_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Noticeinfo pm = (Noticeinfo) s.get(Noticeinfo.class, noticeinfo_id);
        s.delete(pm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewNoticeinfo() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Noticeinfo> launchlist = s.createQuery("from Noticeinfo").list();
        Gson g = new Gson();
        String noticegson = g.toJson(launchlist);
        t.commit();
        s.close();
        return noticegson;
    }

    @Override
    public Noticeinfo viewOneNoticeinfo(int noticeinfo_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Noticeinfo pm = (Noticeinfo) s.get(Noticeinfo.class, noticeinfo_id);
        t.commit();
        s.close();
        return pm;
    }

}
