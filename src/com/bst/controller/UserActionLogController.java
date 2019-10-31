package com.bst.controller;

import com.bst.pojo.UserActionLog;
import com.bst.service.UserActionLogService;
import com.bst.util.DataTableUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/test/")
public class UserActionLogController {
    @Autowired
    private UserActionLogService userActionLogService;


    /**
     * @param start  当前页码
     * @param length  每页显示条数
     * @param request
     * @return      返回分页排序处理后的对象
     */
    @RequestMapping("findAll")
    @ResponseBody
    public DataTableUtil<UserActionLog> getUsers(String start, String length, HttpServletRequest request)
    {
        String order = request.getParameter("order[0][column]");//排序的列号
        String order_desc = request.getParameter("order[0][dir]");//排序的顺序asc or desc
        String order_column = request.getParameter("columns["+order+"][data]");//排序的列。注意，我认为页面上的列的名字要和表中列的名字一致，否则，会导致SQL拼接错误
        System.out.print(order_column+"=="+order_desc);
        return userActionLogService.getUsers(start, length,order_column,order_desc);
    }


    @RequestMapping("update")
    @ResponseBody
    Boolean updateUserActionLog(@RequestParam(value = "id") Integer id, String action, String address)
    {
        return userActionLogService.updateUserActionLog(id,action,address);
    }

    @RequestMapping("delete")
    @ResponseBody
    Boolean deleteUserActionLog(Integer id){
        return userActionLogService.deleteUserActionLog(id);
    }

    @RequestMapping("search")
    @ResponseBody
    public List<UserActionLog> findUserActionLog(HttpServletRequest request)
    {
        String search = request.getParameter("search[value]");
        return userActionLogService.findUserActionLog(search);
    }



}
