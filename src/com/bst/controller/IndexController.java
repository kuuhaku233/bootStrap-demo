package com.bst.controller;

import com.bst.pojo.Resource;
import com.bst.service.SysResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/index/")
public class IndexController {
    @Autowired
    private SysResourceService sysResourceService;

    @RequestMapping("userbar")
    @ResponseBody
    public Map<String,Object> getUserBar()
    {
        Map<String,Object> map=new HashMap<>();
        List<String> list=new ArrayList<>();
        list.add("张三");
        list.add("李四");
        list.add("王五");
        list.add("赵六");
        list.add("小明");
        map.put("xname",list);
        List<String> list1=new ArrayList<>();
        list1.add("20");
        list1.add("11");
        list1.add("22");
        list1.add("44");
        list1.add("33");
        map.put("yage", list1);
        map.put("name", "年龄");
        return map;
    }

    @RequestMapping("salbar")
    @ResponseBody
    public Map<String,Object> getSal()
    {
        Map<String,Object> map=new HashMap<>();
        List<Resource> getresource = sysResourceService.getresource("1", "1");
        map.put("resource", getresource);
        return map;


    }
}
