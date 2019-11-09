package com.bst.controller;

import com.bst.dao.SysResourceDao;
import com.bst.pojo.Resource;
import com.bst.service.SysPowerService;
import com.bst.service.SysResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/system/")
public class SysPowerController {
    @Autowired
    private SysPowerService sysPowerService;

    //获取所有的角色名称
    @RequestMapping("getpowerrole")
    @ResponseBody
    public List<String> getPowerRole()
    {
        return sysPowerService.getPowerRole();
    }

    //获取选中角色锁具有的资源
    @RequestMapping("getpwoerresource")
    @ResponseBody
    public List<Resource> getPowerResource(String roleName)
    {
       return sysPowerService.getPowerResource(roleName);
    }


}
