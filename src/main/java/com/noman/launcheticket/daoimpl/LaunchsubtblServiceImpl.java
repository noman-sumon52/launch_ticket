/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.LaunchsubtblService;
import com.noman.launcheticket.model.Launchsubtbl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public class LaunchsubtblServiceImpl implements LaunchsubtblService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertLaunchsubtbl(Launchsubtbl sublaunch) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(sublaunch);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateLaunchsubtbl(int sublaunch_id, Launchsubtbl sublaunch) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchsubtbl subobject = (Launchsubtbl) s.get(Launchsubtbl.class, sublaunch_id);
        s.update(subobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteLaunchsubtbl(int sublaunch_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchsubtbl am = (Launchsubtbl) s.get(Launchsubtbl.class, sublaunch_id);
        s.delete(am);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewLaunchsubtbl() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Launchsubtbl> launchlist = s.createQuery("from Launchsubtbl").list();
        Gson g = new Gson();
        String laungson = g.toJson(launchlist);
        t.commit();
        s.close();
        return laungson;
    }

    @Override
    public Launchsubtbl viewOneLaunchsubtbl(int sublaunch_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchsubtbl pm = (Launchsubtbl) s.get(Launchsubtbl.class, sublaunch_id);
        t.commit();
        s.close();
        return pm;
    }

}
