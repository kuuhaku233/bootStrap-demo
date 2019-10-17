package com.bst.service.impl;

import com.bst.dao.UserDao;
import com.bst.pojo.User;
import com.bst.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean getLogin(User user) {
        return userDao.getLogin(user);
    }

    @Override
    public List<User> getUsers() {
        return userDao.getUsers();
    }
}
