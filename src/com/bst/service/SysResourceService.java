package com.bst.service;

import com.bst.pojo.Resource;

import java.util.List;

public interface SysResourceService {
    List<Resource> getresource(String offset, String limit);
}
