package com.bst.service;

import com.bst.pojo.Resource;

import java.util.List;

public interface SysPowerService {
    //查询权限管理中的 角色信息
    List<String> getPowerRole();

    //获取选中角色锁具有的资源
    public List<Resource> getPowerResource(String roleName);
}
