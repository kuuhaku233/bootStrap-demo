package com.bst.service;

import com.bst.view.PowerVO;

import java.util.List;

public interface SysPowerService {

    //获取选中角色锁具有的资源
    public List<PowerVO> getPowerResource(Integer rid);

    //修改用户资源
    public Boolean updateRolePower(Integer rid,String [] arr);
}
