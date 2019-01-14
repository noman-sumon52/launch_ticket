/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.PassengerInfoService;
import com.noman.launcheticket.model.PassengerInfo;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 *
 * @author dhaka
 */
@Repository
public class PassengerInfoServiceImpl implements PassengerInfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertPassengerinfo(PassengerInfo ps) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(ps);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updatePassengerinfo(int psi_d, PassengerInfo ps) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        PassengerInfo onepassengerobject = (PassengerInfo) s.get(PassengerInfo.class, psi_d);
        s.update(onepassengerobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deletePassengerinfo(int psi_d) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        PassengerInfo pm = (PassengerInfo) s.get(PassengerInfo.class, psi_d);
        s.delete(pm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewPassengerinfo() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<PassengerInfo> passengerlist = s.createQuery("from PassengerInfo").list();
        Gson g = new Gson();
        String passengerlistgson = g.toJson(passengerlist);
        System.out.println("fdsfdsfds"+passengerlistgson);
        t.commit();
        s.close();
        return passengerlistgson;
    }

    @Override
    public PassengerInfo viewonePassengerinfo(int psi_d) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        PassengerInfo pm = (PassengerInfo) s.get(PassengerInfo.class, psi_d);
        t.commit();
        s.close();
        return pm;
    }

    @Override
    public PassengerInfo viewonePassengerbyEmail(String email) {
         Session s=sessionFactory.openSession();
        Transaction t=s.getTransaction();
        t.begin();
        Query q = s.createQuery("from PassengerInfo where passemail=?");
        q.setString(0, email);
        List<PassengerInfo> pi=q.list();
        t.commit();
        s.close();
       return pi.get(0);
    }

}
