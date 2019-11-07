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
    public List<Resource> getresource(String offset, String limit) {
        return sysResourceDao.getresource(offset, limit);
    }

    @Override
    public boolean deleteResourceById(String reid) {
        return sysResourceDao.deleteResourceById(reid);
    }

    @Override
    public boolean updateResourceMess(Resource resource) {
        return sysResourceDao.updateResourceMess(resource);
    }

    @Override
    public Resource updateTest(Resource resource) {
        return sysResourceDao.updateTest(resource);
    }

    @Override
    public List<Resource> getSelectVal(Integer rejigouid) {
        return sysResourceDao.getSelectVal(rejigouid);
    }
}
