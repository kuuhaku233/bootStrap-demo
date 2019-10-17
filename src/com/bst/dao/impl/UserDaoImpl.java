package com.bst.dao.impl;
import com.bst.dao.UserDao;
import com.bst.pojo.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class UserDaoImpl  implements UserDao{
    @Autowired(required = true)
    private SessionFactory sf;

    public Session getSession(){
        return sf.getCurrentSession();
    }


    @Override
    public boolean getLogin(User user) {
        String hql="select count(*) from User as su where su.userName=:username and su.userPwd=:password";
        Query query =getSession().createQuery(hql);
        query.setString("username",user.getUserName());
        query.setString("password",user.getUserPwd());
        Number num= (Number) query.uniqueResult();
        if (num.intValue()>0){
            return true;
        }
        return false;
    }

    @Override
    public List<User> getUsers() {
        String hql="from User";
        Query query=getSession().createQuery(hql);
        List<User> list = query.list();
        return list;
    }
}
