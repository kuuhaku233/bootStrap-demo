package com.bst.dao;

import com.bst.pojo.Resource;
import com.bst.view.PowerVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

public interface SysPowerDao {


    //获取选中角色锁具有的资源
    public List<PowerVO> getPowerResource(Integer rid);

    /**
     *
     * @param rid  用户id
     * @param reids  用户资源id
     * @return t/f
     */

    public Boolean updateRolePower(Integer rid,String [] arr);
}
