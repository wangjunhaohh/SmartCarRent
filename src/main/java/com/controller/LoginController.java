package com.controller;

import com.bean.Users;
import com.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {

    @Resource
    private LoginService loginService;

    @RequestMapping(value = "/login")
    @ResponseBody
    public String login(HttpSession session, Users users){
        List<Users> usersList = loginService.userList();
        for(Users ul:usersList){
            if(ul.getNickname().equals(users.getNickname())&&ul.getPassword().equals(users.getPassword())){
                session.setAttribute("userId",ul.getId());
                session.setAttribute("nickname",users.getNickname());
                System.out.println("success");
                return "welcome";
            }
        }
        return "0";
    }

    @RequestMapping(value = "/static/html/register")
    @ResponseBody
    public String register(Users users){
        Users user = new Users();
        user.setNickname(users.getNickname());
        user.setPassword(users.getPassword());
        user.setName(users.getName());
        user.setTel(users.getTel());
        try {
            loginService.insertList(user);
        }catch (Exception e){
            e.printStackTrace();
            return users.getNickname();
        }
        return "1";
    }
}
