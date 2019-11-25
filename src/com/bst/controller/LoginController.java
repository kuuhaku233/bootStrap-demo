package com.bst.controller;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import com.bst.service.SysResourceService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/system/")
public class LoginController {

    @Autowired
    private LoginService ls;
    @Autowired
    private SysResourceService sysResourceService;

    @RequestMapping("login")
    public String getLogin(SysUserEntity su, HttpSession session) throws JsonProcessingException {
        SysUserEntity user=ls.getLogin(su);
        if(user!=null){
            session.setAttribute("userInfo",user);
            List<Resource> roleLinkByRoleId = sysResourceService.getRoleLinkByRoleId(user.getRoleid());
            //将获取到的资源数据 转换成json字符串 存放在session中
            ObjectMapper mapper=new ObjectMapper();
            String resources=mapper.writeValueAsString(roleLinkByRoleId);
            session.setAttribute("sysresources",resources);
            return "index";
        }
        return "login";
    }


}
