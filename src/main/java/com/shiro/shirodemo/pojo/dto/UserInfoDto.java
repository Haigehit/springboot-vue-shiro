package com.shiro.shirodemo.pojo.dto;

import java.util.ArrayList;

/**
 * 用户登录信息
 *
 * @author: jwy
 * @date: 2018/1/12
 */
public class UserInfoDto {


    private String id;

    /**
     * 用户头像
     */
    private String userImg;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 用户名称
     */
    private String username;

    /**
     * 用户状态
     */
    private Integer state;

    /**
     * 用户状态
     */
    private String password;

    /**
     * 角色id
     */
    private String roleid;

    /**
     * 用户角色
     */
    private String roleName;

    /**
     * 用户类型
     */
    private Integer type;

    /**
     * 角色菜单
     */
    private ArrayList<RolePermisDto> rolePermis;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<RolePermisDto> getRolePermis() {
        return rolePermis;
    }

    public void setRolePermis(ArrayList<RolePermisDto> rolePermis) {
        this.rolePermis = rolePermis;
    }
}
