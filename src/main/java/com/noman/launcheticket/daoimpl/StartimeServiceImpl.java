/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.StarttimeService;
import com.noman.launcheticket.model.Starttime;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author noman
 */
@Repository
public class StartimeServiceImpl implements StarttimeService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertStarttimeService(Starttime strtime) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(strtime);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateStarttimeService(int str_id, Starttime strtime) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(strtime);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteStarttimeService(int str_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Starttime f = (Starttime) s.get(Starttime.class, str_id);
        s.delete(f);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewStarttimeService() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Starttime> list = s.createQuery("from Starttime").list();
        Gson g = new Gson();
        String Starttimelist = g.toJson(list);
        t.commit();
        s.close();
        return Starttimelist;
    }

    @Override
    public Starttime viewOneStarttimeService(int str_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Starttime st = (Starttime) s.get(Starttime.class, str_id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(st);
        return st;
    }

}
