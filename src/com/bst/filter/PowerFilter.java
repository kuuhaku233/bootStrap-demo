package com.bst.filter;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

public class PowerFilter implements HandlerInterceptor {

    /**
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return 返回true就不再执行    false将拦截请求
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        //不过滤的uri
        String[] notFilter = new String[]{"/system/login", "login.jsp", "index.jsp", "link/logout","/link/tonopower"};
        //请求的uri
        String uri = httpServletRequest.getRequestURI();
        System.out.println("uri:"+uri);
        boolean doFilter = false;
        for (String s : notFilter) {
            if (uri.indexOf(s) != -1) {
                //uri中包含不过滤uri，则不进行过滤
                doFilter = true;
                break;
            }
        }
        if(!doFilter){
            //获取session中的用户信息
            HttpSession session = httpServletRequest.getSession();
            SysUserEntity su=(SysUserEntity)session.getAttribute("userInfo");
            //根据session中的值进行判断
            if(su!=null){
                /*//判断是否有权限访问该资源
                List<SysResourceEntity> sres=(List<SysResourceEntity>)session.getAttribute("RESOURCES_FILTER");
                boolean b=true;
                for(SysResourceEntity sre:sres){
                    if(uri.indexOf(sre.getRelink())!=-1){
                        b=false;
                        break;
                    }
                }
                //没有访问权限的话跳转到没有权限的提示页面
                if(b){
                    response.sendRedirect("/"+httpServletRequest.getContextPath()+"/link/tonopower");
                }*/

                //判断是否是手动输入的uri或者是粘贴的uri
                String conString = httpServletRequest.getHeader("REFERER");
                if("".equals(conString) || null==conString){
                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/link/tonopower");
                    doFilter=false;
                    return doFilter;
                }


                doFilter=true;
                return doFilter;
            }else{
                //判断是否是ajax请求
                if (httpServletRequest.getHeader("x-requested-with") != null && httpServletRequest.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) { //如果是ajax请求响应头会有x-requested-with
                    PrintWriter out = httpServletResponse.getWriter();
                    out.print("loseSession");//session失效
                    out.flush();
                }else{
                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/system/login");
                }


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
