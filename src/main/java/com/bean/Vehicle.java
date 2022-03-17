package com.bean;


public class Vehicle {

  private Integer id;
  private String number;
  private String brand;
  private double price;
  private String color;
  private String stutus;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getNumber() {
    return number;
  }

  public void setNumber(String number) {
    this.number = number;
  }


  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
  }


  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }


  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public String getStutus() {
    return stutus;
  }

  public void setStutus(String stutus) {
    this.stutus = stutus;
  }

  @Override
  public String toString() {
    return "Vehicle{" +
            "id=" + id +
            ", number='" + number + '\'' +
            ", brand='" + brand + '\'' +
            ", price=" + price +
            ", color='" + color + '\'' +
            ", stutus='" + stutus + '\'' +
            '}';
  }
}
