package com.dao;

import com.bean.RentMessage;

import java.util.List;

public interface RentMessageDao {

    List<RentMessage> rentMsg(String nickname);
    Integer rowmsg();
}
