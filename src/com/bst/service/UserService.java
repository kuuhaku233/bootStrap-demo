package com.bst.service;

import com.bst.pojo.User;
import com.bst.util.DataTableUtil;

import java.util.List;

public interface UserService {

    boolean getLogin(User user);

    DataTableUtil<User> getUsers(String start, String length);

    Boolean saveUser(User user);

    Boolean getUserName(String userName);
}
