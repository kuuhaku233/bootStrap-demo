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
    public List<Resource> getresource() {
        String hql="SELECT\n" +
                "\tsr2.reid AS reid,\n" +
                "\tsr2.resourcename AS resourcename,\n" +
                "\tsr2.relink AS relink,\n" +
                "\tsr2.rebianhao AS rebianhao,\n" +
                "\tsr2.rejigouid AS rejigouid,\n" +
                "\tsr1.resourcename AS reopjigouid \n" +
                "FROM\n" +
                "\tresource AS sr1\n" +
                "\tINNER JOIN resource AS sr2 ON sr2.reopjigouid = sr1.reid";
        Query sqlQuery = getSession().createSQLQuery(hql).addEntity(Resource.class);
        return sqlQuery.list();
    }
}
