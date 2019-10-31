package com.bst.service.impl;

import com.bst.dao.UserActionLogDao;
import com.bst.pojo.UserActionLog;
import com.bst.service.UserActionLogService;
import com.bst.util.DataTableUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserActionLogServiceImpl implements UserActionLogService {
    @Autowired
    private UserActionLogDao userActionLogDao;
    @Override
    public DataTableUtil<UserActionLog> getUsers(String start, String length,String order_column,String order_desc) {
        return userActionLogDao.getUsers(start, length,order_column,order_desc);
    }

    @Override
    public Boolean updateUserActionLog(Integer id,String action,String address) {
        return userActionLogDao.updateUserActionLog(id, action, address);
    }

    @Override
    public Boolean deleteUserActionLog(Integer id) {
        return userActionLogDao.deleteUserActionLog(id);
    }

    @Override
    public List<UserActionLog> findUserActionLog(String search) {
        return userActionLogDao.findUserActionLog(search);
    }
}
