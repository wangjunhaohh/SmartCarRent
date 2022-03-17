package com.service;

import com.bean.Users;
import com.dao.LoginDao;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginService implements LoginDao {

    @Resource
    private LoginDao dao;
    @Override
    public List<Users> userList() {
        return dao.userList();
    }

    @Override
    public int insertList(Users users) {
        return dao.insertList(users);
    }

}
