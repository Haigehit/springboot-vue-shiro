package com.shiro.shirodemo.pojo.dto;

import java.util.ArrayList;

/**
 * 访问统计
 *
 * @author: jwy
 * @date: 2018/1/11
 */
public class RequstOprDto {
    /**
     * 名称
     */
    private String name;

    /**
     * 值
     */
    private int value;

    private ArrayList Metlist;

    private ArrayList Usrlist;

    /**
     * 名称
     */
    private String[] arrName;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public ArrayList getMetlist() {
        return Metlist;
    }

    public void setMetlist(ArrayList metlist) {
        Metlist = metlist;
    }

    public ArrayList getUsrlist() {
        return Usrlist;
    }

    public void setUsrlist(ArrayList usrlist) {
        Usrlist = usrlist;
    }

    public String[] getArrName() {
        return arrName;
    }

    public void setArrName(String[] arrName) {
        this.arrName = arrName;
    }
}
