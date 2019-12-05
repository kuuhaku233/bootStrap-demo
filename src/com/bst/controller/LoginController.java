package com.bst.controller;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import com.bst.service.SysResourceService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
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

        //获取认证主题
        Subject subject= SecurityUtils.getSubject();
        //建议改成自定义的Token认证器（方便传输实体类）
        UsernamePasswordToken token = new UsernamePasswordToken(su.getUsername(),su.getPassword());
        //捕获到异常说明验证不通过，跳转到登录页面(shiro没有对异常进行处理，未授权和认证不通过都只抛出异常)
        //可采用spring的方式自行进行跳转，如果使用注解的形式，可以采用配置的方式实现
        try {
            subject.login(token);
        }catch (UnknownAccountException e) {
            System.out.println( e.getMessage());
            return "redirect:login.jsp";
        } catch (IncorrectCredentialsException e) {
            System.out.println( "账号或密码不正确");
            return "redirect:login.jsp";
        } catch (LockedAccountException e) {
            System.out.println( "账号被锁定");
            return "redirect:login.jsp";
        } catch (AuthenticationException e) {
            System.out.println("账号验证失败");
            return "redirect:login.jsp";
        }


        //判断是否认证通过
        boolean isAuthenticated=subject.isAuthenticated();
        if(isAuthenticated){
            //获取认证后的主体信息(主题信息也可从session中获取)
            //subject.getSession();
            SysUserEntity su1=(SysUserEntity) subject.getPrincipal();
            //获取认证后的权限信息
            //subject.isPermitted("user:select");
            session.setAttribute("userInfo",su1);
           /* List<Resource>listres= sysResourceService.getRoleLinkByRoleId(su1.getRoleid());
            ObjectMapper mapper = new ObjectMapper();
            String powerjson=mapper.writeValueAsString(listres);
            //放入一个session字符串，前台页面遍历使用
            session.setAttribute("RESOURCES",powerjson);*/

            return "index";

        }else{
            return "/login.jsp";
        }

    }


}
