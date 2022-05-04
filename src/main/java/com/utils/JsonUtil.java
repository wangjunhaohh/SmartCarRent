package com.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

public class JsonUtil {
    public static void toJson(List list, HttpServletResponse response,Integer count) throws Exception{
        String json="";
        if(list!=null){
            ObjectMapper om = new ObjectMapper();
            json = om.writeValueAsString(list);
        }
        response.setContentType("application/json;charset=utf-8");
        PrintWriter pw= response.getWriter();
        json="{\"code\": 0,\"msg\": \"\",\"count\": "+count+",\"data\":"+json+"}";
        pw.println(json);
        pw.flush();
        pw.close();
    }
    public static String toCustomJson(List list) throws Exception{
        String json="";
        ObjectMapper om = new ObjectMapper();
        json = om.writeValueAsString(list);
//        json = json.replaceAll("\"(\\w+)\"(\\s*:\\s*)", "$1$2");
        return json;
    }
}
