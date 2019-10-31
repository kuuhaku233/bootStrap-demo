package com.bst.controller;

import com.bst.pojo.Role;
import com.bst.pojo.SysUserEntity;
import com.bst.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/system/")
public class SysRoleController {
    @Autowired
    private SysRoleService sysRoleService;

    //查询角色表所有信息
    @RequestMapping("findAll")
    @ResponseBody
    List<Role> findAll() {
        return sysRoleService.getRoles();
    }

    /**
     *   更新角色信息
     * @param rid  角色信息的id
     * @param rname  更新的角色名称
     * @return
     */

    @RequestMapping("update")
    @ResponseBody
    Boolean updateRole(@RequestParam(value = "rid") Integer rid, String rname) {
        return sysRoleService.updateRole(rid, rname);
    }

    //根据id 删除角色信息
    @RequestMapping("delete")
    @ResponseBody
    Boolean deleteRole(@RequestParam(value = "rid") Integer rid) {
        return sysRoleService.deleteRole(rid);
    }


    //新增角色信息
    @RequestMapping("save")
    @ResponseBody
    Boolean saveRole(Role role) {
        return sysRoleService.saveRole(role);
    }

    //获取角色对应users表的  人员
    @RequestMapping("getroleuser")
    @ResponseBody
    List<SysUserEntity> getroleuser(Integer rid)
    {
        return sysRoleService.getroleuser(rid);
    }

    //修改角色表 角色下人员的信息
    @RequestMapping("updateroleuser")
    @ResponseBody
    Boolean updateUserRole(String [] uid)
    {
        //数组长度大于1，说明有用户被取消掉了
        if(uid.length>1)
        {
            return sysRoleService.updateUserRole(uid);
        }
        else
        { return true;}
    }
}
