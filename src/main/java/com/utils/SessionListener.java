package com.utils;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
public class SessionListener implements HttpSessionListener {
    private int count=0;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        count++; // Session对象创建时count变量加1
        ServletContext context = se.getSession().getServletContext();
        context.setAttribute("count", Integer.valueOf(count));
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        count--;
        if(count<0){
            count=0;
        }
        ServletContext context = se.getSession().getServletContext();
        context.setAttribute("count", Integer.valueOf(count));
    }
}
