/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.FromstationService;
import com.noman.launcheticket.model.Fromstation;
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
public class FromstationServiceImpl implements FromstationService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertFromStationService(Fromstation fstation) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(fstation);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateFromStationService(int f_id, Fromstation fstation) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(fstation);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteFromtationService(int f_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Fromstation f = (Fromstation) s.get(Fromstation.class, f_id);
        s.delete(f);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewFromStationService() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Fromstation> list = s.createQuery("from Fromstation").list();
        Gson g = new Gson();
        String Fromstationlist = g.toJson(list);
        t.commit();
        s.close();
        return Fromstationlist;
    }

    @Override
    public Fromstation viewOneFromStationService(int f_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Fromstation st = (Fromstation) s.get(Fromstation.class, f_id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(st);
        return st;
    }

}
