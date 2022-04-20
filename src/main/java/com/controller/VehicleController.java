package com.controller;


import com.bean.Vehicle;
import com.service.RentMessageService;
import com.service.VehicleService;
import com.utils.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/static/html")
public class VehicleController {

    @Resource
    private VehicleService vehicleService;
    @Resource
    private RentMessageService rentMessageService;

    @RequestMapping(value = "/allVehicle")
    public void cars(HttpServletResponse response, HttpServletRequest request) throws Exception {
        String brand = request.getParameter("brand");
        String color = request.getParameter("color");
        if(brand ==""){ brand = null; }
        if(color ==""){ color = null; }
        List<Vehicle> vehicles = vehicleService.allVehcle(brand,color);
        Integer count = vehicleService.rowCar();
        JsonUtil.toJson(vehicles,response,count);
    }

    @RequestMapping(value = "/rentCar")
    @ResponseBody
    public double rentCar(Integer id){
        Vehicle vehicle = vehicleService.oneVehcle(id);
        return  vehicle.getPrice();
    }

    @RequestMapping(value = "/rentResult")
    @ResponseBody
    public String rent(Integer id, HttpSession session){
        System.out.println(session.getAttribute("userId"));
        Integer userId = Integer.valueOf(String.valueOf(session.getAttribute("userId")));
        Integer count = rentMessageService.limitcounts(userId);
        if(count<1){
            vehicleService.rentVehcle(id);
            rentMessageService.addMsg(userId,id);
            return "1";
        }else {
            return "0";
        }

    }
}
