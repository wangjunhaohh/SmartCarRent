package com.controller;


import com.bean.Vehicle;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.VehicleService;
import com.utils.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping(value = "/static/html")
public class VehicleController {

    @Resource
    private VehicleService vehicleService;

    @RequestMapping(value = "/allVehicle")
    public void cars(HttpServletResponse response) throws Exception {
        List<Vehicle> vehicles = vehicleService.allVehcle();
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
    public String rent(Integer id){
        vehicleService.rentVehcle(id);
        return "1";
    }
}
