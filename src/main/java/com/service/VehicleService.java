package com.service;

import com.bean.Vehicle;
import com.bean.count.Brand;
import com.dao.VehicleDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class VehicleService implements VehicleDao{

    @Resource
    private VehicleDao dao;


    @Override
    public List<Vehicle> allVehcle(String brand,String color) {
        return dao.allVehcle(brand, color);
    }

    @Override
    public Integer rowCar(String brand,String color) {
        return dao.rowCar(brand, color);
    }

    @Override
    public Vehicle oneVehcle(Integer id) {
        return dao.oneVehcle(id);
    }

    @Override
    public void rentVehcle(Integer id) {
        dao.rentVehcle(id);
    }

    @Override
    public void backVehcle(String number) {
        dao.backVehcle(number);
    }

    @Override
    public List<Brand> countBrand() {
        return dao.countBrand();
    }

    @Override
    public int addVehcle(List<Vehicle> list) {
        return dao.addVehcle(list);
    }


}
