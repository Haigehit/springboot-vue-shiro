package com.shiro.shirodemo.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import java.util.HashMap;
import java.util.Map;

/**
 * @desc: 封装返回结果集
 * 
 * @author: jwy
 * @date: 2017/12/20
 */
public class JsonResult {

    public static Object result(Integer status, String msg, Object data,Integer total){
        Map<String,Object> map = new HashMap<String, Object>(){
            {
                put("status",status.toString());
                put("msg",msg);
                put("data",data);
                put("total",total);
            }
        };
        return JSON.toJSON(map);
    }

    public static Object result(Integer status, String msg, Object data){
        Map<String,Object> map = new HashMap<String, Object>(){
            {
                put("status",status.toString());
                put("msg",msg);
                put("data",data);
            }
        };
        return JSON.toJSON(map);
    }

    public static Object result(Integer status, String msg){
        Map<String,Object> map = new HashMap<String, Object>(){
            {
                put("status",status.toString());
                put("msg",msg);
            }
        };
        return JSON.toJSON(map);
    }
}
