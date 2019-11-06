package com.bst.dao;

import com.bst.pojo.Resource;

import java.util.List;

public interface SysResourceDao {

    List<Resource> getresource(String offset, String limit);
}
