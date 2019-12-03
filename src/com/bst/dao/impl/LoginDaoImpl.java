package com.bst.dao.impl;

import com.bst.dao.LoginDao;
import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.AliasToBeanResultTransformer;
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

    SysUserEntity su1=null;
    @Override
    //获取登录用户的信息
    public SysUserEntity getLogin(SysUserEntity su) {
        String hql="from SysUserEntity as su where su.username=:username and su.password=:password";
        Query query =getSession().createQuery(hql);
        query.setString("username",su.getUsername());
        query.setString("password",su.getPassword());
        su1= (SysUserEntity) query.uniqueResult();

        return su1;
    }

    //获取用户的资源数据
    public List<Resource> getUserPower(){
        String sql="select * from sys_resource as sr where sr.reid in(select reid from sys_power as sp where sp.rid=:roleid)";

        Query query=getSession().createSQLQuery(sql).setResultTransformer(new AliasToBeanResultTransformer(Resource.class));
        query.setInteger("roleid",su1.getRoleid());
        return query.list();
    }


}
