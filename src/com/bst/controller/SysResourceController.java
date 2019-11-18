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

    //查询系统资源信息
    @RequestMapping("getresource")
    @ResponseBody
    List<Resource> getresource(String offset, String limit) {
        return sysResourceService.getresource(offset, limit);
    }

    //删除资源记录
    @RequestMapping("delresource")
    @ResponseBody
    public boolean deleteResourceById(String reid) {
        return sysResourceService.deleteResourceById(reid);
    }

    //修改资源信息
    @RequestMapping("updateresource")
    @ResponseBody
    public boolean updateResourceMess(Resource resource) {
        return sysResourceService.updateResourceMess(resource);
    }

    //添加资源 下拉列表的级联
    @RequestMapping("selectval")
    @ResponseBody
    public List<Resource> getSelectVal(Integer rejigouid) {
        return sysResourceService.getSelectVal(rejigouid);
    }

    //新增资源记录
    @RequestMapping("saveresource")
    @ResponseBody
    public Resource saveResource(Resource resource)
    {
        return sysResourceService.saveResource(resource);
    }

    //根据用户id获取 资源
    @RequestMapping("getrolelink")
    @ResponseBody
    List<Resource> getRoleLinkByRoleId(Integer roleid) {
        return sysResourceService.getRoleLinkByRoleId(roleid);
    }

}
