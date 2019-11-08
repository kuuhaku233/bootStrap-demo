package com.bst.dao;

import com.bst.pojo.Resource;

import java.util.List;

public interface SysPowerDao {

    //查询权限管理中的 角色信息
    List<String> getPowerRole();
}
