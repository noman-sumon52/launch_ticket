/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.EndtimeService;
import com.noman.launcheticket.model.Endtime;

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
public class EndtimeServiceImpl implements EndtimeService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertEndtimeService(Endtime strtime) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(strtime);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateEndtimeService(int end_id, Endtime endtime) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(endtime);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteEndtimeService(int end_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Endtime f = (Endtime) s.get(Endtime.class, end_id);
        s.delete(f);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewEndtimeService() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Endtime> list = s.createQuery("from Endtime").list();
        Gson g = new Gson();
        String Starttimelist = g.toJson(list);
        t.commit();
        s.close();
        return Starttimelist;
    }

    @Override
    public Endtime viewOneEndtimeService(int end_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Endtime st = (Endtime) s.get(Endtime.class, end_id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String endtimegson = g.toJson(st);
        return st;
    }

}
