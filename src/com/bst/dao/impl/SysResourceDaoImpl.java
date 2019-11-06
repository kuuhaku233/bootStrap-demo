package com.bst.dao.impl;

import com.bst.dao.SysResourceDao;
import com.bst.pojo.Resource;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class SysResourceDaoImpl implements SysResourceDao {
    @Autowired
    private SessionFactory sessionFactory;
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    @Override
    public List<Resource> getresource(String offset, String limit) {
       String hql="from Resource";
        Query query = getSession().createQuery(hql);
        return query.list();
    }
}
