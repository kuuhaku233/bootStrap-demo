package com.bst.dao;

import com.bst.pojo.UserActionLog;
import com.bst.util.DataTableUtil;

import java.util.List;

public interface UserActionLogDao {

    /*
       获取分页排序后的表格数据
     */
    DataTableUtil<UserActionLog> getUsers(String start,String length,String order_column,String order_desc);

    /**
     *    修改用户信息
     * @param id  用户id
     * @param action   用户输入的action
     * @param address   用户输入的adress
     * @return  true/flase
     */
    Boolean updateUserActionLog(Integer id,String action,String address);

    /**
     *   删除用户
     * @param id 用户id
     * @return  true/flase
     */
    Boolean deleteUserActionLog(Integer id);

    List<UserActionLog> findUserActionLog(String search);


}
