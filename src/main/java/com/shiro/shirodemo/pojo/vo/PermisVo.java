package com.shiro.shirodemo.pojo.vo;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.Valid;

/**
 * @desc: 菜单vo
 * 
 * @author: jwy
 * @date: 2017/12/26
 */
public class PermisVo {

    /**
     * 菜单名称
     */
    @NotEmpty(message = "菜单名称不能为空")
    private String name;

    /**
     * 地址
     */
    @NotEmpty(message = "地址不能为空")
    private String url;

    /**
     * 菜单类型
     */
    @NotEmpty(message = "类型不能为空")
    private String type;

    /**
     * 父级菜单id
     */
    @NotEmpty(message = "父级菜单不能为空")
    private String lastId;

    /**
     * 用户名称
     */
    private String userName;

    /**
     * 用户id
     */
    private String userId;

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

    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    public String getLastId() {
        return lastId;
    }

    public void setLastId(String lastId) {
        this.lastId = lastId;
    }
}
