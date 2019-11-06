package com.bst.dao;

import com.bst.pojo.Resource;

import java.util.List;

public interface SysResourceDao {

    //查询系统资源信息
    List<Resource> getresource(String offset, String limit);

    //删除资源记录
    public boolean deleteResourceById(String reid);

    //修改资源信息
    public boolean updateResourceMess(Resource resource);
}
