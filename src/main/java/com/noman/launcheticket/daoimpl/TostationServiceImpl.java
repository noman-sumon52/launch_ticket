/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.TostationService;
import com.noman.launcheticket.model.Tostation;
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
public class TostationServiceImpl implements TostationService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertToStationService(Tostation tostation) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(tostation);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateToStationService(int tst_id, Tostation tostation) {
           Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(tostation);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteTotationService(int tst_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Tostation st = (Tostation) s.get(Tostation.class, tst_id);
        s.delete(st);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewToStationService() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Tostation> list = s.createQuery("from Tostation").list();
        Gson g = new Gson();
        String Fromstationlist = g.toJson(list);
        t.commit();
        s.close();
        return Fromstationlist;
    }

    @Override
    public Tostation viewOneToStationService(int tst_id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Tostation st = (Tostation) s.get(Tostation.class, tst_id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(st);
        return st;
    }

}
