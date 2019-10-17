package com.bst.controller;

import com.bst.pojo.User;
import com.bst.service.UserService;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user/")
public class TestController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(User user)
    {
        boolean b = userService.getLogin(user);
        if(b==true)
        {
            return "index";
        }
        return "pages-login";
    }
    @RequestMapping("findAll")
    public String getSysUsers(HttpServletRequest request) {
        List<User> listsus=userService.getUsers();
        request.setAttribute("users",listsus);
        return "sysuser";

    }


}
