package com.bst.service.impl;

import com.bst.dao.SysResourceDao;
import com.bst.pojo.Resource;
import com.bst.service.SysResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SysResourceServiceImpl implements SysResourceService {
    @Autowired
    private SysResourceDao sysResourceDao;
    @Override
    public List<Resource> getresource() {
        return sysResourceDao.getresource();
    }
}
