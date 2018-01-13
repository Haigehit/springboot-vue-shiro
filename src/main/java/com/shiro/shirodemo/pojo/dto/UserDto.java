package com.shiro.shirodemo.pojo.dto;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.shiro.shirodemo.entity.Role;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @desc: 用户Dto
 * 
 * @author: jwy
 * @date: 2017/12/19
 */
public class UserDto  implements Serializable{

	private String id;
    /**
     * 用户昵称
     */
	private String userName;
    /**
     * 邮箱|登录帐号
     */
	private String email;

    /**
     * 创建时间
     */
	private Date createTime;

    /**
     * 最后登录时间
     */
	private Date lastLoginTime;

	/**
	 * 1:有效，0:禁止登录
	 */
	private Integer status;

	/**
	 * 有效 禁止登录
	 */
	private String state;

	/**
	 * 角色
	 */
	private String role;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
}
