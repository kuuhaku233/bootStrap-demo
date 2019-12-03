package com.bst.dao;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;

import java.util.List;

public interface LoginDao {

    public SysUserEntity getLogin(SysUserEntity su);

    //获取用户的资源数据
    public List<Resource> getUserPower();
}
