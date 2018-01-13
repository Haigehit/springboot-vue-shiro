package com.shiro.shirodemo.pojo.dto;

import com.shiro.shirodemo.entity.Permission;

import java.util.ArrayList;
import java.util.List;

/**
 * @desc: 菜单dto
 * 
 * @author: jwy
 * @date: 2018/1/3
 */
public class PermisDto {
    private String id;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 子菜单
     */
    private ArrayList<PermisDto> children;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<PermisDto> getChildren() {
        return children;
    }

    public void setChildren(ArrayList<PermisDto> children) {
        this.children = children;
    }
}
