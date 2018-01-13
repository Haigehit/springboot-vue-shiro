package com.shiro.shirodemo.api.base;

import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.pojo.dto.UserInfoDto;
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
        UserInfoDto user = (UserInfoDto) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getUsername() ? null : user.getUsername();

    }

    /**
     * 获取用户名id
     * @return
     */
    protected String getUserId() {

        Subject subject = SecurityUtils.getSubject();
        UserInfoDto user = (UserInfoDto) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getId() ? null : user.getId();

    }

    /**
     * 获取角色id
     * @return
     */
    protected String getRoleId() {

        Subject subject = SecurityUtils.getSubject();
        UserInfoDto user = (UserInfoDto) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getRoleid() ? null : user.getRoleid();

    }

    /**
     * 获取角色名称
     * @return
     */
    protected String getRoleName() {

        Subject subject = SecurityUtils.getSubject();
        UserInfoDto user = (UserInfoDto) subject.getPrincipal();
        if (null == user) {
            return null;
        }
        return null == user.getRoleName() ? null : user.getRoleName();

    }

}
