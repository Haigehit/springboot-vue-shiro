package com.shiro.shirodemo.entity;

import java.io.Serializable;

import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;

/**
 * <p>
 * <p>
 * </p>
 *
 * @author jwy
 * @since 2018-01-11
 */
@TableName("sys_login_log")
public class LoginLog extends Model<LoginLog> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;
    /**
     * 用户id
     */
    private String uid;
    /**
     * 登录时间
     */
    private Date loginTime;
    /**
     * 登录ip
     */
    private String loginIP;
    /**
     * 登录总次数
     */
    private Integer loginTotal;

    @TableField(exist = false)
    /**
     * 用户名称
     */
    private String userName;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public String getLoginIP() {
        return loginIP;
    }

    public void setLoginIP(String loginIP) {
        this.loginIP = loginIP;
    }

    public Integer getLoginTotal() {
        return loginTotal;
    }

    public void setLoginTotal(Integer loginTotal) {
        this.loginTotal = loginTotal;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public static final String ID = "id";

    public static final String UID = "uid";

    public static final String LOGINTIME = "loginTime";

    public static final String LOGINIP = "loginIP";

    public static final String LOGINTOTAL = "loginTotal";

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "LoginLog{" +
                "id=" + id +
                ", uid=" + uid +
                ", loginTime=" + loginTime +
                ", loginIP=" + loginIP +
                ", loginTotal=" + loginTotal +
                "}";
    }
}
