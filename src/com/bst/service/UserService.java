package com.bst.service;

import com.bst.pojo.User;

import java.util.List;

public interface UserService {

    boolean getLogin(User user);

    List<User> getUsers();
}
