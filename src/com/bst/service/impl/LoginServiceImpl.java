package com.bst.service.impl;

import com.bst.dao.LoginDao;
import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDao ld;

    @Override
    public SysUserEntity getLogin(SysUserEntity su) {
        return ld.getLogin(su);
    }

    @Override
    public List<Resource> getUserPower() {
        return null;
    }
}
