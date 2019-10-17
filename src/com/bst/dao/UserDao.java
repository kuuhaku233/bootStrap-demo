package com.bst.dao;

import com.bst.pojo.User;

import java.util.List;

public interface UserDao {
    /*
       用户登录
     */
    boolean getLogin(User user);

    /*
        获取所有用户信息
     */
    List<User> getUsers();

}
