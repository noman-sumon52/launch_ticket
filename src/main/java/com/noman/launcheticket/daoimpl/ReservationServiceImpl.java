/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.ReservationService;
import com.noman.launcheticket.model.Reservation;
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
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertLaunchReservation(Reservation reservation) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(reservation);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateLaunchReservation(int reser_id, Reservation reservation) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Reservation oneproductobject = (Reservation) s.get(Reservation.class, reser_id);
        oneproductobject.setEmailid(reservation.getEmailid());
        oneproductobject.setPtn(reservation.getPtn());
        oneproductobject.setLaunchid(reservation.getLaunchid());
        oneproductobject.setResstatus(reservation.getResstatus());
        oneproductobject.setStarttimeid(reservation.getStarttimeid());

        s.update(oneproductobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteLaunchReservation(int reser_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Reservation pm = (Reservation) s.get(Reservation.class, reser_id);
        s.delete(pm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewLaunchReservation() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Reservation> productslist = s.createQuery("from Reservation").list();
        Gson g = new Gson();
        String productslistgson = g.toJson(productslist);
        t.commit();
        s.close();
        return productslistgson;
    }

    @Override
    public Reservation viewOneLaunchReservation(int reser_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Reservation pm = (Reservation) s.get(Reservation.class, reser_id);
        t.commit();
        s.close();
        return pm;
    }

}
