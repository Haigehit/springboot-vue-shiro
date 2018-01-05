package com.shiro.shirodemo.pojo.vo;

import com.baomidou.mybatisplus.annotations.TableField;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Pattern;
import java.util.Date;

/**
 * @desc: 用户vo
 * 
 * @author: jwy
 * @date: 2017/12/16
 */
public class UserVo {

    /**
     * 用户昵称
     */
    @NotEmpty(message = "用户名不能为空")
    private String name;
    /**
     * 邮箱|登录帐号
     */
    @Email(message = "邮箱格式不正确")
    private String email;
    /**
     * 密码
     */
    @NotEmpty(message = "密码不能为空")
    // @Pattern(regexp = "^[a-zA-Z]\\w{5,17}$", message = "密码以字母开头，长度在6~18之间，只能包含字符、数字和下划线")
    private String pass;

    /**
     * 状态
     */
    private Boolean status;

    /**
     * 用户角色
     */
    @NotBlank(message = "请选择用户角色")
    private String role;

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

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
