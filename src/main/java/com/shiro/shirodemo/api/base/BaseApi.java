package com.shiro.shirodemo.api.base;

import com.shiro.shirodemo.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

/**
 * @desc:
 * 
 * @author: jwy
 * @date: 2018/1/2
 */
public class BaseApi {

    /**
     * 获取用户名称
     * @return
     */
    protected String getUserName() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getNickname();

    }

    /**
     * 获取用户名id
     * @return
     */
    protected String getUserId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getId();

    }

    /**
     * 获取角色id
     * @return
     */
    protected String getRoleId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getRid();

    }

    /**
     * 获取角色名称
     * @return
     */
    protected String getRoleName() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getRoleName();

    }

}
