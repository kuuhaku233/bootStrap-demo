package com.bst.service.impl;

import com.bst.dao.SysPowerDao;
import com.bst.pojo.Resource;
import com.bst.service.SysPowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysPwoerServiceImpl implements SysPowerService {
    @Autowired
    private SysPowerDao sysPowerDao;
    @Override
    public List<String> getPowerRole() {
        return sysPowerDao.getPowerRole();
    }

    @Override
    public List<Resource> getPowerResource(String roleName) {
        return sysPowerDao.getPowerResource(roleName);
    }
}
