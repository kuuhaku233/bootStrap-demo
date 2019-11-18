package com.bst.service.impl;

import com.bst.dao.LoginDao;
import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDao ld;

    @Override
    public boolean getLogin(SysUserEntity su) {
        return ld.getLogin(su);
    }
}
