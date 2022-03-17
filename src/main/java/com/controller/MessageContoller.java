package com.controller;


import com.bean.RentMessage;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.RentMessageService;
import com.utils.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping(value = "/static/html")
@Controller
public class MessageContoller {

    @Resource
    private RentMessageService rentMessageService;

    @RequestMapping(value = "/rentmsg")
    public void rentMsg(HttpServletResponse response) throws Exception {
        String nickname=null;
        List<RentMessage> rentmsgs = rentMessageService.rentMsg(nickname);
        Integer count = rentMessageService.rowmsg();
        JsonUtil.toJson(rentmsgs,response,count);
    }

    @RequestMapping(value = "/UserRentMessage")
    public void allUserMessage(HttpSession session, HttpServletResponse response) throws Exception {

        String nickname = (String) session.getAttribute("nickname");
        List<RentMessage> rentmsgs = rentMessageService.rentMsg(nickname);
        Integer count = rentMessageService.rowmsg();
        JsonUtil.toJson(rentmsgs,response,count);
    }
}
