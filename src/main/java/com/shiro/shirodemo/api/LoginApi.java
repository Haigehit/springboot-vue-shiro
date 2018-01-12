package com.shiro.shirodemo.api;

import com.alibaba.fastjson.JSON;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.LoginLog;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.service.LoginLogService;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import com.xiaoleilu.hutool.crypto.SecureUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RestController
@RequestMapping(value = "LoginApi/v1")
public class LoginApi {

    @Autowired
    private UserService userService;

    @Autowired
    private LoginLogService loginLogService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public Object login(String name, String pass, HttpSession session, HttpServletRequest request) {
        return userService.login(name, pass, session, request);
    }

    @RequestMapping(value = "/loginOut",method = RequestMethod.GET)
    public Object logout() {
        try {
            Subject subject = SecurityUtils.getSubject();
            subject.logout();
            return JsonResult.result(EnumCode.OK.getValue(),"退出登陆成功");
        } catch (Exception e) {
            return "/login";
        }
    }
}
