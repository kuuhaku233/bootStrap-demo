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

    @RequestMapping("getpowerrole")
    @ResponseBody
    public List<String> getPowerRole()
    {
        return sysPowerService.getPowerRole();
    }


}
