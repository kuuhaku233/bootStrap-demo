package com.bst.service;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;

import java.util.List;

public interface LoginService {

    //实现登录
    public SysUserEntity getLogin(SysUserEntity su);

    //获取用户的资源数据
    public List<Resource> getUserPower();
}
