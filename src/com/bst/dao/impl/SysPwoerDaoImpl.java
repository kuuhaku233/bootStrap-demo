package com.bst.dao.impl;

import com.bst.dao.SysPowerDao;
import com.bst.pojo.Power;
import com.bst.view.PowerVO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Arrays;
import java.util.List;

@Repository
public class SysPwoerDaoImpl implements SysPowerDao {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    @Override
    public List<PowerVO> getPowerResource(Integer rid) {
        String sql = "SELECT\n" +
                "\tsr.reid,\n" +
                "\tsr.relink,\n" +
                "\tsr.resourcename,\n" +
                "\tsr.rebianhao,\n" +
                "\tsr.reopjigouid,\n" +
                "\tsp.reid AS powerreid \n" +
                "FROM\n" +
                "\tresource AS sr\n" +
                "\tLEFT JOIN power AS sp ON sp.rid = :rid \n" +
                "\tAND sp.reid = sr.reid";
        Query query = getSession().createSQLQuery(sql).setResultTransformer
                (new AliasToBeanResultTransformer(PowerVO.class));
        query.setInteger("rid", rid);
        return query.list();


    }

    @Override
    public Boolean updateRolePower(Integer rid, String[] arr) {
        String hql = "delete from Power where rid=" + rid;
        Query query = getSession().createQuery(hql);
        int result = query.executeUpdate();
        for (int i = 0; i < arr.length; i++) {
            Power power = new Power();
            power.setRid(rid);
            power.setReid(Integer.parseInt(arr[i]));
            getSession().saveOrUpdate(power);
            if (i % 50 == 0) {
                getSession().flush();
                getSession().clear();
            }
        }
        return true;

    }
}
