package com.dao;

import com.bean.Vehicle;

import java.util.List;

public interface VehicleDao {
    List<Vehicle> allVehcle();
    Integer rowCar();
    Vehicle oneVehcle(Integer id);
    void rentVehcle(Integer id);
}
