package com.bst.dao;

import com.bst.pojo.User;
import com.bst.util.DataTableUtil;

import java.util.List;

public interface UserDao {
    /*
       用户登录
     */
    boolean getLogin(User user);

    /*
        获取所有用户信息
     */
    DataTableUtil<User> getUsers(String start, String length);

    Boolean saveUser(User user);

    Boolean getUserName(String userName);

}
