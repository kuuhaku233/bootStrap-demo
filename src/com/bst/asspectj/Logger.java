package com.bst.asspectj;

import com.bst.pojo.SysUserEntity;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/* 定义为切点 */
@Aspect
@Component
public class Logger {

    @Resource
    private HttpServletRequest request;

    @Pointcut("execution(* com.bst.controller.*.*(..))")
    public void  getPoint() { }

    @Before("getPoint()")
    public void Before()
    {
        Date beginTime=new Date();
        HttpSession session=request.getSession();
        //获取用户信息
        SysUserEntity su=(SysUserEntity) session.getAttribute("userinfo");

        if(su!=null) {
            System.out.println("操作用户："+su.getUsername());
            System.out.println("角色信息："+su.getRoleid());
        }
        System.out.println("业务开始时间："+beginTime);
    }

    /**
     * 后置通知 用于拦截Controller层记录用户的操作
     * @param joinPoint 切点
     */
    @After("getPoint())")
    public void doAfter(JoinPoint joinPoint) {


        //获取该方法的类名（业务模块）
        String logtype=joinPoint.getSignature().getDeclaringType().getSimpleName();
        //获取操作的方法名（功能模块）
        String logmess=joinPoint.getSignature().getName();
        Date endTime=new Date();
        System.out.println("业务结束时间："+endTime);
        System.out.println("业务模块："+logtype);
        System.out.println("功能模块："+logmess);

    }

    /**
     *  异常通知
     * @param joinPoint
     * @param e
     */
    @AfterThrowing(pointcut = "getPoint()", throwing = "e")
    public  void doAfterThrowing(JoinPoint joinPoint, Throwable e) {

    }
}
