/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.daoimpl;

import com.google.gson.Gson;
import com.noman.launcheticket.dao.CategoryService;
import com.noman.launcheticket.model.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



/**
 *
 * @author User
 */
@Repository
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public String insertCategory(Category cm) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateCategory(Category cm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteCategory(String id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Category cm = (Category) s.get(Category.class, id);
        s.delete(cm);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewCategory() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Category> categorieslist = s.createQuery("from Category").list();
        Gson g = new Gson();
        String categorylistgson = g.toJson(categorieslist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return categorylistgson;
    }

    @Override
    public Category viewOneCategory(String id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Category cm = (Category) s.get(Category.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(cm);
        return cm;
    }
    
}
