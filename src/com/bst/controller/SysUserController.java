package com.bst.controller;

import com.bst.pojo.SysUserEntity;
import com.bst.service.SysUserService;
import com.bst.util.DataTableDatas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/system/")
public class SysUserController {
    @Autowired
    private SysUserService sus;

    //获取用户信息
    @RequestMapping("getsysusers")
    @ResponseBody
    public DataTableDatas<SysUserEntity> getSysUsers(String start, String length,
                                                     HttpServletRequest reqeust) {
        //获取datatable的排序参数
        String order=reqeust.getParameter("order[0][column]");
        String orderdir=reqeust.getParameter("order[0][dir]");
        String ordercolumn = reqeust.getParameter("columns["+order+"][data]");

        DataTableDatas<SysUserEntity> listsus=sus.getSysUsers(start,length,ordercolumn,orderdir);
       /* request.setAttribute("userinfos",listsus);*/
        return listsus;

    }

    @RequestMapping("updateusermess")
    @ResponseBody
    //更新用户信息
    public boolean updateUserMess(@RequestParam(value = "uid") int uid, String username,
                                  String password,String email,String phone,String register_address,String register_time){

       return sus.updateUserMess(uid,username,password,email,phone,register_address,register_time);

    }

    //删除用户信息
    @RequestMapping("deleteusermess")
    @ResponseBody
    public boolean deleteUserMess(@RequestParam(value = "uid") int uid){
        return sus.deleteUserMess(uid);

    }

    //新增用户数据
    @RequestMapping("addusermess")
    @ResponseBody
    public boolean addUserMess(SysUserEntity su){
        return sus.addUserMess(su);
    }

    //验证手机号是否存在
    @RequestMapping("userphoneyanzheng")
    @ResponseBody
    public Map<String,Boolean> getUserPhoneYanZheng(String phone){
        boolean jieguo= sus.getUserPhoneYanZheng(phone);
        Map<String,Boolean> map = new HashMap<String,Boolean>();
        map.put("valid",jieguo);
        return map;
    }
}
