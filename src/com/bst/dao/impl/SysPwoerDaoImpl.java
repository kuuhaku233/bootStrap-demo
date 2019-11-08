package com.bst.dao.impl;

import com.bst.dao.SysPowerDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysPwoerDaoImpl implements SysPowerDao {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<String> getPowerRole() {
        String hql = "select rname from Role";
        return getSession().createQuery(hql).list();
    }
}
