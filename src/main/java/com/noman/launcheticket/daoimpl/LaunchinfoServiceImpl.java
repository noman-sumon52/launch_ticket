/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.LaunchinfoService;
import com.noman.launcheticket.model.Launchinfo;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class LaunchinfoServiceImpl implements LaunchinfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertLaunch(Launchinfo launch) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(launch);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateLaunch(int launch_id, Launchinfo launch) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchinfo onenoticebject = (Launchinfo) s.get(Launchinfo.class, launch_id);
        s.update(onenoticebject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteLaunch(int launch_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchinfo pm = (Launchinfo) s.get(Launchinfo.class, launch_id);
        s.delete(pm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewLaunch() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Launchinfo> launchlist = s.createQuery("from Launchinfo").list();
        Gson g = new Gson();
        String laungson = g.toJson(launchlist);
        t.commit();
        s.close();
        return laungson;
    }

    @Override
    public Launchinfo viewOneLaunch(int launch_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchinfo pm = (Launchinfo) s.get(Launchinfo.class, launch_id);
        t.commit();
        s.close();
        return pm;
    }

    @Override
    public String SearchLaunch(Launchinfo launch) {
        Date d = launch.getD();
        String dd = new SimpleDateFormat("EEEEE").format(d);
        int a = launch.getFromstationid();
        int b = launch.getTostationid();
        System.out.println(a);
        System.out.println(b);
        String c = launch.getDayoff();
        System.out.println(d);
        Session s = sessionFactory.openSession();

        Transaction t = s.getTransaction();
        t.begin();
        List<Launchinfo> offday = s.createQuery("select u from Launchinfo u where dayoff=?").setParameter(0, dd).list();
//        Query q=s.createQuery("select * from Traininfo where fromstationid=?,tostationid=?,dayoff=?").setParameter(0,fromstid).setParameter(1, tostid).setParameter(2, dates);

        if (offday.size() > 0) {
            Gson g = new Gson();
            String traininfogson = g.toJson("");
            return traininfogson;
        } else {
            List<Launchinfo> productslist = s.createQuery("select u from Launchinfo u where fromstationid=? and tostationid=?").setParameter(0, a).setParameter(1, b).list();
            Gson g = new Gson();
            String traininfogson = g.toJson(productslist);
            t.commit();
            s.close();
           return traininfogson;
        }

    }

    @Override
    public Launchinfo buyticket(int launch_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Launchinfo pm = (Launchinfo) s.get(Launchinfo.class, launch_id);
        t.commit();
        s.close();
        return pm;

    }
}
