package com.shiro.shirodemo.pojo.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 用户修改个人信息
 *
 * @author: jwy
 * @date: 2018/1/15
 */
public class UserInfoVo {

    /**
     * id
     */
    @NotBlank(message = "id不能为空")
    private String id;

    /**
     * 姓名
     */
    @NotBlank(message = "姓名不能为空")
    private String name;

    /**
     * 邮箱
     */
    @NotBlank(message = "邮箱不能为空")
    private String email;

    /**
     * 头像
     */
    @NotBlank(message = "头像不能为空")
    private String userImg;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }
}
