package com.bst.filter;

import com.bst.pojo.SysUserEntity;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * shiro的自定义过滤器，用于过滤非法或者手动输入的url
 * @author cxp
 * 2019年11月29日11:56:33
 */
public class CheckNoUrlFilter extends AuthorizationFilter {

    //重写验证规则，验证是否是手动输入的url
    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) throws Exception {
        HttpServletRequest httpServletRequest =(HttpServletRequest)servletRequest;
        HttpServletResponse httpServletResponse =(HttpServletResponse)servletResponse;
        //不过滤的uri
        String[] notFilter = new String[]{"login.jsp", "login","nopower.html"};

        //请求的uri
        String uri = httpServletRequest.getRequestURI();

        //是否过滤
        boolean doFilter = false;
        for (String s : notFilter) {
            if (uri.indexOf(s) != -1) {
                //uri中包含不过滤uri，则不进行过滤
                doFilter = true;
                break;
            }
        }

        if (!doFilter) {
            //获取session中的用户信息
            HttpSession session = httpServletRequest.getSession();
            SysUserEntity su = (SysUserEntity) session.getAttribute("USERINFO");
            //根据session中的值进行判断
            if (su != null) {

                //判断是否是手动输入的uri或者是粘贴的uri
                String conString = httpServletRequest.getHeader("REFERER");
                if ("".equals(conString) || null == conString) {
                    //httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/bst/jsp/error/nopower.html");
                    doFilter = false;
                    return doFilter;
                }


                doFilter = true;
                return doFilter;
            } else {

                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login.jsp");



            }
        }
        return doFilter;
    }


}
