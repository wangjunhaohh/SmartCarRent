package com.utils;

import java.util.Random;

public class Randdata {
    static String number[] ={"湘A","湘B","湘C","湘D","湘E","湘F","湘G"};
    static String brand[] ={"奔驰", "宝马", "奥迪", "丰田", "路虎", "比亚迪","特斯拉"};
    static String color[] = {"黑色","灰色","白色","绿色","紫色","红色","粉色"};
    public static int rand(int start ,int end){
        return new Random().nextInt(end-start+1)+start;
    }
    public static String numberData(){
        String pre=number[rand(0,number.length-1)];
        int suffix=rand(10000,99999);
        return pre+suffix;
    }
    public static String brandData(){
        return brand[rand(0,brand.length-1)];
    }
    public static String colorData(){
        return color[rand(0,color.length-1)];
    }
    public static float priceData(){
        return rand(1200,2200);
    }
}
