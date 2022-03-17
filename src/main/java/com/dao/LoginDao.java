package com.dao;



import com.bean.Users;

import java.util.List;

public interface LoginDao {
    List<Users> userList();
    int insertList(Users users);
}
