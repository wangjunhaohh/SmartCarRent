package com.dao;

import com.bean.Vehicle;
import com.bean.count.Brand;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface VehicleDao {
    List<Vehicle> allVehcle(@Param(value = "brand") String brand, @Param(value = "color") String color);
    Integer rowCar(@Param(value = "brand") String brand, @Param(value = "color") String color);
    Vehicle oneVehcle(Integer id);
    void rentVehcle(Integer id);
    void backVehcle(String number);
    List<Brand> countBrand();
    int addVehcle(List<Vehicle> addlist);
    void updataVehcile(@Param(value = "number") String number,@Param(value = "brand") String brand, @Param(value = "color")String color ,@Param(value = "id")Integer id,
    @Param(value = "price")double price);
    void delCar(Integer id);
}
