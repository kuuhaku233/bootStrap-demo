package com.bst.dao;

import com.bst.pojo.SysUserEntity;
import com.bst.util.DataTableDatas;

import java.io.UnsupportedEncodingException;
import java.util.List;

public interface SysUserDao {

    //获取所有用户信息
    public DataTableDatas<SysUserEntity> getSysUsers(String start, String length, String ordercolumn, String orderdir);

    //修改用户信息
    public boolean updateUserMess(int uid, String username,
                                  String password, String email, String phone, String register_address, String register_time);

    //删除用户信息
    public boolean deleteUserMess(int uid);

    //新增用户信息
    public boolean addUserMess(SysUserEntity su) throws UnsupportedEncodingException;

    //验证手机号是否存在
    public boolean getUserPhoneYanZheng(String phone);

    //导出excle表格
    List<SysUserEntity> getUserInfo(String idList);
}
