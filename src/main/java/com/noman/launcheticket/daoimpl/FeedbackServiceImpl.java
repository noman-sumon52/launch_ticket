/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.FeedbackService;
import com.noman.launcheticket.model.Feedback;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author C14
 */
@Repository
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertFeedback(Feedback fdbk) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(fdbk);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateFeedback(int fd_id, Feedback fdbk) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(fdbk);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteFeedback(int fd_id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Feedback cm = (Feedback) s.get(Feedback.class, fd_id);
        s.delete(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewFeedback() {
    Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Feedback> categorieslist = s.createQuery("from Feedback").list();
        Gson g = new Gson();
        String categorylistgson = g.toJson(categorieslist);
        t.commit();
        s.close();
        return categorylistgson;
    }

    @Override
    public Feedback viewOneFeedback(int fd_id) {
    Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Feedback cm = (Feedback) s.get(Feedback.class, fd_id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(cm);
        return cm;
    }

}
