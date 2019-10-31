package com.bst.dao.impl;
import com.bst.dao.UserDao;
import com.bst.pojo.User;
import com.bst.util.DataTableUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.Date;
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
    public DataTableUtil<User> getUsers(String start, String length) {
        DataTableUtil<User> dt=new DataTableUtil<>();
        String hql="from User";
        Query query=getSession().createQuery(hql);
        //查询分页
        query.setFirstResult(Integer.parseInt(start));
        query.setMaxResults(Integer.parseInt(length));
        List<User> list = query.list();
        ///查询总记录数
        String hql1="select count(*) from User";
        Query query1=getSession().createQuery(hql1);
        Long RecordsTotal= (Long) query1.uniqueResult();
        dt.setData(list);
        dt.setRecordsFiltered(RecordsTotal.toString());
        dt.setRecordsTotal(RecordsTotal.toString());
        return dt;
    }

    @Override
    public Boolean saveUser(User user) {
        if(StringUtils.isEmpty(user))
        {
            return false;
        }
        user.setLastLongTime(new Date());
        getSession().saveOrUpdate(user);
        return true;
    }

    @Override
    public Boolean getUserName(String userName) {
        String hql="select count(*) from User u where u.userName="+userName;
        Number result = (Number) getSession().createQuery(hql).uniqueResult();
        if(result.intValue()>0)
        {
            return false;
        }
        return true;
    }
}
