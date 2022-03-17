package com.service;

import com.bean.Vehicle;
import com.dao.VehicleDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class VehicleService implements VehicleDao{

    @Resource
    private VehicleDao dao;


    @Override
    public List<Vehicle> allVehcle() {
        return dao.allVehcle();
    }

    @Override
    public Integer rowCar() {
        return dao.rowCar();
    }

    @Override
    public Vehicle oneVehcle(Integer id) {
        return dao.oneVehcle(id);
    }

    @Override
    public void rentVehcle(Integer id) {
        dao.rentVehcle(id);
    }

}
