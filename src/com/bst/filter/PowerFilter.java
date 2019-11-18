package com.bst.filter;

import com.bst.pojo.SysUserEntity;
import com.bst.pojo.User;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class PowerFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {
        //不过滤的uri
        String[] notFilter = new String[]{"/system/login","pages-login.jsp","index.jsp"};
        //请求的uri
        String uri = httpServletRequest.getRequestURI();
        boolean doFilter = true;
        for(String s : notFilter){
            if(uri.indexOf(s) != -1){
                //uri中包含不过滤uri，则不进行过滤
                doFilter = false;
                break;
            }
        }
        if(doFilter){
            //获取session中的用户信息
            HttpSession session = httpServletRequest.getSession();
            SysUserEntity user = (SysUserEntity) session.getAttribute("userInfo");
            System.out.println(user);
            if(user!=null){
                filterChain.doFilter(httpServletRequest, httpServletResponse);
                return;
            }
            else {
                httpServletResponse.sendRedirect("/system/login");
            }
        }
        filterChain.doFilter(httpServletRequest, httpServletResponse);
    }


}
