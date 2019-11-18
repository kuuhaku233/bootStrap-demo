package com.bst.dao.impl;

import com.bst.dao.LoginDao;
import com.bst.pojo.SysUserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDaoImpl implements LoginDao {
    @Autowired(required = true)
    private SessionFactory sf;

    public Session getSession(){
        return sf.getCurrentSession();
    }

    @Override
    public SysUserEntity getLogin(SysUserEntity su) {
        String sql="select * from users as su where su.username=:username and su.password=:password";
        Query query =getSession().createSQLQuery(sql).addEntity(SysUserEntity.class);
        query.setString("username",su.getUsername());
        query.setString("password",su.getPassword());
        List<SysUserEntity> list = query.list();
        if (list.size()>0){
            return list.get(0);
        }
        return null;
    }
}
