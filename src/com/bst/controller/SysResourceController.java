package com.bst.controller;

import com.bst.pojo.Resource;
import com.bst.service.SysResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/system/")
public class SysResourceController {
    @Autowired
    private SysResourceService sysResourceService;

    @RequestMapping("getresource")
    @ResponseBody
    List<Resource> getresource(String offset, String limit) {
        return sysResourceService.getresource( offset,  limit);
    }
}
