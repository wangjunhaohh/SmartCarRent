package com.dao;

import com.bean.RentMessage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RentMessageDao {

    List<RentMessage> rentMsg(String nickname);
    Integer rowmsg();
    int addMsg(@Param(value = "userId") Integer userId,@Param(value = "carId") Integer carId);
    int limitcounts(Integer id);
}
