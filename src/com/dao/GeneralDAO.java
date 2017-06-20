package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangz on 2017/6/19.
 */
public class GeneralDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List getData(String hql) {
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

    public void saveData(Object object) {
        try {
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(object);
            transaction.commit();
            session.clear();
            session.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public List getDataBySQL(String sql) {
        System.out.println(sql);
        List list = new ArrayList();
        try {
            Session session=sessionFactory.openSession();
            list = session.createSQLQuery(sql).list();
            session.clear();
            session.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return list;
    }
}
