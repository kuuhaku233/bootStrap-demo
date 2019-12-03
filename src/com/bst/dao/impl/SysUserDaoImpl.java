package com.bst.dao.impl;

import com.bst.dao.SysUserDao;
import com.bst.pojo.SysUserEntity;
import com.bst.util.DataTableDatas;
import com.bst.util.GetIpcofig;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class SysUserDaoImpl implements SysUserDao {
    @Autowired
    private SessionFactory sf;

    public Session getSession(){
        return sf.getCurrentSession();
    }

    @Override
    public DataTableDatas<SysUserEntity> getSysUsers(String start, String length, String ordercolumn, String orderdir) {
        String hql="from SysUserEntity order by "+ordercolumn +" "+ orderdir;
        String hql1= "select count(*) from SysUserEntity";
        Query query = getSession().createQuery(hql);
        //Hibernate分页
        query.setFirstResult(Integer.valueOf(start));
        query.setMaxResults(Integer.valueOf(length));
        List<SysUserEntity> sus=query.list();

        //查询总的记录条数
        Query query1=getSession().createQuery(hql1);
        Number num=(Number) query1.uniqueResult();



        DataTableDatas<SysUserEntity> dtds= new DataTableDatas<SysUserEntity>();
        dtds.setData(sus);
        dtds.setRecordsFiltered(num.toString());
        dtds.setRecordsTotal(num.toString());

        return dtds;
    }

    //修改用户信息
    public boolean updateUserMess(int uid, String username,
                                  String password,String email,String phone,String register_address,String register_time){
        SysUserEntity su=(SysUserEntity)getSession().get(SysUserEntity.class,uid);
        su.setUid(uid);
        su.setUsername(username);
        su.setPassword(password);
        su.setEmail(email);
        su.setPhone(phone);
        su.setRegister_address(register_address);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        try {
            su.setRegister_time(new Timestamp(sdf.parse(register_address).getTime()));

        } catch (ParseException e) {
            e.printStackTrace();
        }

        getSession().update(su);
        return true;
    }

    @Override
    //删除用户信息
    public boolean deleteUserMess(int uid) {
        SysUserEntity desu= (SysUserEntity) getSession().get(SysUserEntity.class,uid);
        getSession().delete(desu);
        return true;
    }

    //新增用户信息
    public boolean addUserMess(SysUserEntity su) throws UnsupportedEncodingException {
        su.setRegister_time(new Timestamp(new Date().getTime()));
        su.setLogin_time(new Timestamp(new Date().getTime()));
        su.setLogin_count("0");
        su.setSigned("这家伙很懒，什么也没有留下");
        String ip=GetIpcofig.getlocalIp(); //内网ip地址
        System.out.println("ip"+ip);
        String netip=GetIpcofig.getnetIP();    //外网ip地址
        System.out.println("netip"+netip);
        GetIpcofig ipconf= new GetIpcofig();
        String ipaddress= ipconf.getAddresses("ip=" +netip,"UTF-8"); // 获取到完整的地址
        String currIpaddress=ipaddress.substring(4,14);  //包含 X国家 XX省 XX市
        su.setRegister_address(currIpaddress);
        System.out.println(currIpaddress);
        System.out.println("ipaddress"+ipaddress);
        getSession().save(su);
        return true;
    }

    //验证手机号是否存在
    public boolean getUserPhoneYanZheng(String phone){
        String hql = "select count(*) from SysUserEntity where phone="+phone;
        Query query = getSession().createQuery(hql);
        Number num=(Number) query.uniqueResult();
        if(num.intValue()>0){
            return false;
        }
        return true;
    }

    @Override
    public List<SysUserEntity> getUserInfo(String idList) {
        String rkid[]=idList.split(",");
        //如果第一个值等于all，表示要导出所有数据
        if(rkid[0].equals("all")){
            String hql="from SysUserEntity";
            Query query=getSession().createQuery(hql);
            return query.list();
        }else{
            List<Integer> rkids= new ArrayList<Integer>();
            for(String rk:rkid){
                rkids.add(Integer.valueOf(rk));
            }
            String hql="from SysUserEntity where uid in (:idList)";
            Query query=getSession().createQuery(hql);
            query.setParameterList("idList",rkids);
            return query.list();
        }
    }

}
