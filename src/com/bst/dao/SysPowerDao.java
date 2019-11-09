package com.bst.dao;

import com.bst.pojo.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

public interface SysPowerDao {

    //查询权限管理中的 角色信息
    List<String> getPowerRole();

    //获取选中角色锁具有的资源
    public List<Resource> getPowerResource(String roleName);
}
