package com.controller;


import com.bean.Vehicle;
import com.service.RentMessageService;
import com.service.VehicleService;
import com.utils.JsonUtil;
import com.utils.Randdata;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
        Integer count = vehicleService.rowCar(brand,color);
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
    @RequestMapping(value = "/countBrand",produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String countBrand() throws Exception {
        String json = JsonUtil.toCustomJson(vehicleService.countBrand());
        System.out.println(json);
        return json;
    }
    @RequestMapping("/data")
    public void addData(){
        List<Vehicle> addlist = new ArrayList<>();
        for (int i = 0; i < 500; i++) {
            Vehicle vehicle =new Vehicle();
            vehicle.setNumber(Randdata.numberData());
            vehicle.setBrand(Randdata.brandData());
            vehicle.setColor(Randdata.colorData());
            vehicle.setPrice(Randdata.priceData());
            vehicle.setStutus("空闲");
            addlist.add(vehicle);
        }
        System.out.println(addlist);
        vehicleService.addVehcle(addlist);
    }

    @RequestMapping(value = "/oneCarMes")
    @ResponseBody
    public Vehicle oneCarMes(Integer id){
        Vehicle vehicle = vehicleService.oneVehcle(id);
        return  vehicle;
    }

    @RequestMapping(value = "/updataCar")
    @ResponseBody
    public int updataCar(Vehicle vehicle){
        System.out.println(vehicle.getId());
        try {
            vehicleService.updataVehcile(vehicle.getNumber(),vehicle.getBrand(),vehicle.getColor(),vehicle.getId(),vehicle.getPrice());
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @RequestMapping(value = "/delCar")
    @ResponseBody
    public int delCar(Integer id){
        System.out.println(id);
        try {
            vehicleService.delCar(id);
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @RequestMapping(value = "/addCar")
    @ResponseBody
    public int addCar(Vehicle vehicle){
        System.out.println(vehicle);
        Vehicle vehicle1 = new Vehicle();
        List<Vehicle> list = new ArrayList<>();
        vehicle1.setNumber(vehicle.getNumber());
        vehicle1.setBrand(vehicle.getBrand());
        vehicle1.setColor(vehicle.getColor());
        vehicle1.setPrice(vehicle.getPrice());
        vehicle1.setStutus("空闲");
        list.add(vehicle1);
        vehicleService.addVehcle(list);
        return  1;
    }
}
