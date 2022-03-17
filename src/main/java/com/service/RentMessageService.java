package com.service;


import com.bean.RentMessage;
import com.dao.RentMessageDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RentMessageService implements RentMessageDao {

    @Resource
    private RentMessageDao dao;

    @Override
    public List<RentMessage> rentMsg(String nickname) {
        return dao.rentMsg(nickname);
    }

    @Override
    public Integer rowmsg() {
        return dao.rowmsg();
    }

    @Override
    public int addMsg(Integer userId, Integer carId) {
        return dao.addMsg(userId, carId);
    }

    @Override
    public int limitcounts(Integer id) {
        return dao.limitcounts(id);
    }
}
