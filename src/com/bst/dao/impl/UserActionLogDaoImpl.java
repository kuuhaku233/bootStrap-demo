package com.bst.dao.impl;

import com.bst.dao.UserActionLogDao;
import com.bst.pojo.UserActionLog;
import com.bst.util.DataTableUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserActionLogDaoImpl implements UserActionLogDao {
    @Autowired(required = true)
    private SessionFactory sf;

    public Session getSession() {
        return sf.getCurrentSession();
    }

    @Override
    public DataTableUtil<UserActionLog> getUsers(String start, String length, String order_column, String order_desc) {
        DataTableUtil<UserActionLog> dt = new DataTableUtil<>();
        String hql = "from UserActionLog order by" + " " + order_column + " " + order_desc;
        Query query = getSession().createQuery(hql);
        query.setFirstResult(Integer.parseInt(start));
        query.setMaxResults(Integer.parseInt(length));
        List<UserActionLog> list = query.list();


        String hql1 = "select count(*) from UserActionLog";
        Query query1 = getSession().createQuery(hql1);
        Long result = (Long) query1.uniqueResult();
        dt.setData(list);
        dt.setRecordsTotal(result.toString());
        dt.setRecordsFiltered(result.toString());
        return dt;
    }

    @Override
    public Boolean updateUserActionLog(Integer id, String action, String address) {
        String hql = "update UserActionLog u set u.action=:action,u.address=:address where u.id=:id";
        Query query = getSession().createQuery(hql);
        query.setString("action", action);
        query.setString("address", address);
        query.setInteger("id", id);
        int i = query.executeUpdate();
        if (i > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Boolean deleteUserActionLog(Integer id) {
        String hql = "delete from UserActionLog u where u.id=:id";
        Query query = getSession().createQuery(hql);
        query.setInteger("id", id);
        int i = query.executeUpdate();
        if (i > 0) {
            return true;
        }
        return false;

    }

    @Override
    public List<UserActionLog> findUserActionLog(String search) {
        String hql="from UserActionLog u where u.action like ?";
        Query query = getSession().createQuery(hql);
        query.setString(0, search);
        List<UserActionLog> list = query.list();
        return list;
    }
}
