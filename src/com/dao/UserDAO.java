package com.dao;

import com.po.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/18.
 */
public class UserDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void register(User user) {
        try {
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
            session.clear();
            session.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public List<User> getData(String hql) {
        System.out.println(hql);
        List list = new ArrayList();
        try {
            Session session=sessionFactory.openSession();
            list = session.createQuery(hql).list();
            session.clear();
            session.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return list;
    }
}
