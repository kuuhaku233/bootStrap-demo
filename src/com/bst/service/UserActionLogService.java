package com.bst.service;

import com.bst.pojo.UserActionLog;
import com.bst.util.DataTableUtil;

import java.util.List;

public interface UserActionLogService {

    DataTableUtil<UserActionLog> getUsers(String start,String length,String order_column,String order_desc);

    Boolean updateUserActionLog(Integer id,String action,String address);

    Boolean deleteUserActionLog(Integer id);

    List<UserActionLog> findUserActionLog(String search);
}
