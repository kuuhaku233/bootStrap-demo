package com.bst.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/link/")
public class LinkController {

    @RequestMapping("/toindex")
    public String getIndex(){
        return "index";
    }
    @RequestMapping("/tosyspower")
    public String getSysPower(){
        return "syspower";
    }
    @RequestMapping("/tosysuser")
    public String getSysUser(){
        return "sysuser";
    }
    @RequestMapping("/tosysresource")
    public String getSysResource(){
        return "sysresource";
    }
    @RequestMapping("/tosysrole")
    public String getSysRole(){
        return "sysrole";
    }
    @RequestMapping("/login")
    public String getLogin(){
        return "login";
    }

    @RequestMapping("logout")
    public String SysLogOut(HttpSession session){
        session.invalidate();
        return "login";
    }


    @RequestMapping("/tonopower")
    public String getNopower(){
        return "nopower";
    }

    @RequestMapping("/tomap")
    public String getMap(){
        return "map";
    }

}
