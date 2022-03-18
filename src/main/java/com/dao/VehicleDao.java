package com.dao;

import com.bean.Vehicle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VehicleDao {
    List<Vehicle> allVehcle(@Param(value = "brand") String brand, @Param(value = "color") String color);
    Integer rowCar();
    Vehicle oneVehcle(Integer id);
    void rentVehcle(Integer id);
}
