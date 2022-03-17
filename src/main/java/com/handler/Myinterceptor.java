package com.handler;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Myinterceptor implements HandlerInterceptor {


    /*
    *   预处理方法
    *   Object handler：被拦截的控制器对象
    *   返回值Boolean：
    *   true：
    *   false：
    * 特点：
    *   在控制器的方法之前执行，用户请求首先到达此方法，可以验证用户是否登录
    * */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        HttpSession session = request.getSession();
//        if (session.getAttribute("username")!=null) {
            return true;
//        }
//
//        response.sendRedirect(request.getContextPath()+"/login.jsp");
//        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion");
    }
}
