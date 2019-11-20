package com.bst.filter;

import com.bst.pojo.SysUserEntity;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PowerFilter implements HandlerInterceptor {

    /**
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return   返回true就不再执行    false将拦截请求
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

            //不过滤的uri
            String[] notFilter = new String[]{"/system/login","pages-login.jsp","index.jsp"};
            //请求的uri
            String uri = httpServletRequest.getRequestURI();
            System.out.println(uri);
            boolean doFilter = false;
            for(String s : notFilter){
                if(uri.indexOf(s) != -1){
                    //uri中包含不过滤uri，则不进行过滤
                    doFilter = true;
                    break;
                }
            }
            if(!doFilter){
                //获取session中的用户信息
                HttpSession session = httpServletRequest.getSession();
                SysUserEntity user = (SysUserEntity) session.getAttribute("userInfo");
                if(user!=null){
                    doFilter= true;
                }
                else {
                    httpServletRequest.getRequestDispatcher("/jsp/pages-login.jsp").forward(httpServletRequest, httpServletResponse);
                }
            }
        return doFilter;
        }


    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
