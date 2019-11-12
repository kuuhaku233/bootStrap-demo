package com.bst.service.impl;

import com.bst.dao.SysPowerDao;
import com.bst.pojo.Resource;
import com.bst.service.SysPowerService;
import com.bst.view.PowerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysPwoerServiceImpl implements SysPowerService {
    @Autowired
    private SysPowerDao sysPowerDao;

    @Override
    public List<PowerVO> getPowerResource(Integer rid) {
        return sysPowerDao.getPowerResource(rid);
    }

    @Override
    public Boolean updateRolePower(Integer rid, String[] arr) {
        return sysPowerDao.updateRolePower(rid, arr);
    }
}
