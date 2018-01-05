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

    protected String getUserName() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getNickname();

    }

    protected String getUserId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getId();

    }

    protected String getRoleId() {

        Subject subject = SecurityUtils.getSubject();
        User user = (User)subject.getPrincipal();
        return user.getRid();

    }

}
