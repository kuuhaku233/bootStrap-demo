package com.bst.service.impl;

import com.bst.dao.SysUserDao;
import com.bst.pojo.SysUserEntity;
import com.bst.service.SysUserService;
import com.bst.util.DataTableDatas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private SysUserDao sud;

    @Override
    public DataTableDatas<SysUserEntity> getSysUsers(String start, String length, String ordercolumn, String orderdir) {
        return sud.getSysUsers( start, length, ordercolumn, orderdir);
    }

    public boolean updateUserMess(int uid, String username,
                                  String password,String email,String phone,String register_address,String register_time){
        return sud.updateUserMess( uid,  username,
                 password, email, phone, register_address, register_time);
    }

    @Override
    //删除用户信息
    public boolean deleteUserMess(int uid) {
        return sud.deleteUserMess(uid);
    }

    //新增用户信息
    public boolean addUserMess(SysUserEntity su){
        try {
            return sud.addUserMess(su);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return false;
    }

    //验证手机号是否存在
    public boolean getUserPhoneYanZheng(String phone){
        return sud.getUserPhoneYanZheng(phone);
    }

    @Override
    public List<SysUserEntity> getUserInfo(String idList) {
        return sud.getUserInfo(idList);
    }


}
