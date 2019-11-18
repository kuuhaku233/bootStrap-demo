package com.bst.dao.impl;

import com.bst.dao.LoginDao;
import com.bst.pojo.SysUserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl implements LoginDao {
    @Autowired(required = true)
    private SessionFactory sf;

    public Session getSession(){
        return sf.getCurrentSession();
    }

    @Override
    public boolean getLogin(SysUserEntity su) {
        String hql="select count(*) from SysUserEntity as su where su.username=:username and su.password=:password";
        Query query =getSession().createQuery(hql);
        query.setString("username",su.getUsername());
        query.setString("password",su.getPassword());
        Number num= (Number) query.uniqueResult();
        if (num.intValue()>0){
            return true;
        }
        return false;
    }
}
