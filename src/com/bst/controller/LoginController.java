package com.bst.controller;

import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/system/")
public class LoginController {

    @Autowired
    private LoginService ls;

    @RequestMapping("login")
    public String getLogin(SysUserEntity su, HttpSession session){
        SysUserEntity user=ls.getLogin(su);
        if(user!=null){
            session.setAttribute("userInfo",user);
            return "index";
        }
        return "pages-login";
    }

}
