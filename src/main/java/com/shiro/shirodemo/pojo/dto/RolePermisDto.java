package com.shiro.shirodemo.pojo.dto;

import java.util.ArrayList;

/**
 * 动态菜单
 *
 * @author: jwy
 * @date: 2018/1/20
 */
public class RolePermisDto {

    private String id;

    /**
     * name
     */
    private String name;

    /**
     * url
     */
    private String url;

    /**
     * icon
     */
    private String iconCls;

    /**
     * children
     */
    private ArrayList<RolePermisDto> children;


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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public ArrayList<RolePermisDto> getChildren() {
        return children;
    }

    public void setChildren(ArrayList<RolePermisDto> children) {
        this.children = children;
    }
}
