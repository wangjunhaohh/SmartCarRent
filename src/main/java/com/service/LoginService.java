package com.service;

import com.bean.Users;
import com.dao.LoginDao;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LoginService implements LoginDao {

    @Resource
    private LoginDao dao;
    @Resource
    private RedisTemplate redisTemplate;

    @Override
    public List<Users> userList() {
        if(redisTemplate.opsForHash().values("people").size()==0){
            List<Users> list=dao.userList();
            Map<String,Users> usersMap = new HashMap<>();
            for(Users l:list){
                usersMap.put(l.getName(),l);
            }
            redisTemplate.opsForHash().putAll("people",usersMap);
            return dao.userList();
        }else {
            return redisTemplate.opsForHash().values("people");
        }
    }

    @Override
    public int insertList(Users users) {
        Map<String,Users> map = new HashMap<>();
        map.put(users.getName(),users);
        redisTemplate.opsForHash().putAll("people",map);
        return dao.insertList(users);
    }

}
