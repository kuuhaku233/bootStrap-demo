package com.bst.dao.impl;

import com.bst.dao.SysRoleDao;
import com.bst.pojo.Role;
import com.bst.pojo.SysUserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysRoleDaoImpl implements SysRoleDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Role> getRoles() {
        String sql = "select \n" +
                "r.rid as rid\n" +
                ",r.rname as rname\n" +
                ",(select count(*) from users u where u.roleid=r.rid) as ruser\n" +
                ",r.rbianma as rbianma\n" +
                ",r.oid as oid from\n" +
                " role r";
        Query query =  getSession().createSQLQuery(sql).addEntity(Role.class);
        return query.list();
    }

    @Override
    public Boolean updateRole(Integer rid, String rname) {
        String hql = "update Role r set r.rname=:rname where r.rid=:rid";
        Query query = getSession().createQuery(hql);
        query.setString("rname", rname);
        query.setInteger("rid", rid);
        int result = query.executeUpdate();
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Boolean deleteRole(Integer rid) {
        String hql = "delete from Role where rid=" + rid;
        int result = getSession().createQuery(hql).executeUpdate();
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Boolean saveRole(Role role) {
        getSession().saveOrUpdate(role);
        return true;
    }

    @Override
    public List<SysUserEntity> getroleuser(Integer rid) {
        String hql="from SysUserEntity as su where su.roleid="+rid;
        List<SysUserEntity> lists = getSession().createQuery(hql).list();
        return lists;
    }

    @Override
    public Boolean updateUserRole(String[] uid) {

        // hibernate 的批处理
        for(int i=1;i<uid.length;i++)
        {
            SysUserEntity su = (SysUserEntity) getSession().get(SysUserEntity.class, Integer.valueOf(uid[i]));
            su.setRoleid(0);
            getSession().saveOrUpdate(su);
            //数量大于50  每50条清除一次缓存
            if(i%50==0)
            {
                getSession().flush();
                getSession().clear();
            }
        }
        return true;
    }
}
