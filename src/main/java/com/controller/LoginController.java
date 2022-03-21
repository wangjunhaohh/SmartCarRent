package com.controller;

import com.bean.Users;
import com.service.LoginService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {

    @Resource
    private LoginService loginService;
    @Resource
    private RedisTemplate redisTemplate;

    @RequestMapping(value = "/login")
    @ResponseBody
    public String login(HttpSession session, Users users){
        List<Users> list;
        if (redisTemplate.opsForHash().hasKey("people",users.getNickname())){
            list = redisTemplate.opsForHash().values("people");
        }else {
            list = loginService.userList();
            Map<String,Users> usersMap = new HashMap<>();
            for(Users l:list){
                usersMap.put(l.getNickname(),l);
            }
            redisTemplate.opsForHash().putAll("people",usersMap);
            System.out.println("===============更新redis完成================");
        }
        for(Users l:list){
            if(users.getNickname().equals(l.getNickname())&&users.getPassword().equals(l.getPassword())){
                session.setAttribute("userId",l.getId());
                session.setAttribute("nickname",l.getNickname());
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

    @RequestMapping(value = "/static/html/loginout")
    @ResponseBody
    public void loginout(HttpSession session){
        session.invalidate();
    }


}
