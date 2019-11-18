package com.bst.dao.impl;

import com.bst.dao.SysResourceDao;
import com.bst.pojo.Resource;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Repository
public class SysResourceDaoImpl implements SysResourceDao{
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

    @Override
    public boolean deleteResourceById(String reid) {
        String hql="delete from Resource where reid="+reid;
        int i = getSession().createQuery(hql).executeUpdate();
        if(i>0)
        {
            return true;
        }
        return false;
    }

    @Override
    public boolean updateResourceMess(Resource resource) {
        String hql="update Resource set resourcename=:resourcename,relink=:relink,rebianhao=:rebianhao where reid=:reid";
        Query query = getSession().createQuery(hql);
        query.setString("resourcename", resource.getResourcename());
        query.setString("relink", resource.getRelink());
        query.setString("rebianhao", resource.getRebianhao());
        query.setInteger("reid", resource.getReid());
        int i = query.executeUpdate();
        if(i>0)
        {
            return true;
        }
        return false;
    }

    @Override
    public Resource updateTest(Resource resource) {
        String hql="update Resource set resourcename=:resourcename,relink=:relink,rebianhao=:rebianhao where reid=:reid";
        Query query = getSession().createQuery(hql);
        query.setString("resourcename", resource.getResourcename());
        query.setString("relink", resource.getRelink());
        query.setString("rebianhao", resource.getRebianhao());
        query.setInteger("reid", resource.getReid());
        int i = query.executeUpdate();
        if(i>0)
        {
            return (Resource) getSession().get(Resource.class, resource.getReid());
        }
        else
            return null;
    }

    @Override
    public List<Resource> getSelectVal(Integer rejigouid) {
        String hql="from Resource where rejigouid="+(rejigouid-1);
        return getSession().createQuery(hql).list();
    }

    @Override
    public Resource saveResource(Resource resource) {
        //判断属于几级资源
        if(resource.getRejigouid()==0)
        {
            resource.setReopjigouid(0);
        }
        getSession().saveOrUpdate(resource);
        return resource;
    }

    @Override
    public List<Resource> getRoleLinkByRoleId(Integer roleid) {
        String sql="SELECT\n" +
                "\tre.* \n" +
                "FROM\n" +
                "\tresource re \n" +
                "WHERE\n" +
                "\tre.reid IN ( SELECT p.reid FROM power p WHERE p.rid =:roleid )";
        Query query = getSession().createSQLQuery(sql).addEntity(Resource.class);
        query.setInteger("roleid", roleid);
        return query.list();

    }
}
