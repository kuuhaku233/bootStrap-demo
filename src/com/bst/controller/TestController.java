package com.bst.controller;

import com.bst.pojo.User;
import com.bst.service.UserService;
import com.bst.util.DataTableUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user/")
public class TestController {
    @Autowired
    private UserService userService;
    @RequestMapping("login")
    public String login(User user, HttpSession session)
    {
        boolean b = userService.getLogin(user);
        if(b==true)
        {
            session.setAttribute("userInfo", user);
            return "index";
        }
        return "login";
    }

    @RequestMapping("findAll")
    @ResponseBody
    public DataTableUtil<User> getSysUsers(String start, String length) {
        DataTableUtil<User> users=userService.getUsers(start,length);
        return  users;
    }

    @RequestMapping("add")
    @ResponseBody
    public Boolean saveUser(User user)
    {
        return userService.saveUser(user);
    }

    @RequestMapping("userName")
    @ResponseBody
    public Map<String,Boolean> getUserName(String userName)
    {
        Boolean flag = userService.getUserName(userName);
        Map<String,Boolean> maps =new HashMap<>();
        maps.put("valid", flag);
        return maps;

    }


}
