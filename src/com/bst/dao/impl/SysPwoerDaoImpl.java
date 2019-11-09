package com.bst.dao.impl;

import com.bst.dao.SysPowerDao;
import com.bst.pojo.Resource;
import org.hibernate.SQLQuery;
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

    @Override
    public List<Resource> getPowerResource(String roleName) {
        String hql = "SELECT\n" +
                "\tre.reid,\n" +
                "\tre.resourcename,\n" +
                "\tre.relink,\n" +
                "\tre.rebianhao,\n" +
                "\tre.rejigouid,\n" +
                "\tre.reopjigouid \n" +
                "FROM\n" +
                "\tresource re\n" +
                "\tLEFT JOIN power p ON re.reid = p.reid\n" +
                "\tINNER JOIN role r ON p.rid = r.rid " +
                "\tAND r.rname = :roleName";
        SQLQuery sqlQuery = getSession().createSQLQuery(hql).addEntity(Resource.class);
        sqlQuery.setString("roleName", roleName);
        return sqlQuery.list();



    }
}
