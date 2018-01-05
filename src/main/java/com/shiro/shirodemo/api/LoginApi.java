package com.shiro.shirodemo.api;

import com.alibaba.fastjson.JSON;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import com.xiaoleilu.hutool.crypto.SecureUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping(value = "LoginApi/v1")
public class LoginApi {

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public Object login(String name, String pass, HttpSession session){
        UsernamePasswordToken upToken=new UsernamePasswordToken(name, SecureUtil.md5(pass));
        Subject subject = SecurityUtils.getSubject();
        subject.login(upToken);
        User user = (User)subject.getPrincipal();
        session.setAttribute("user",user);
        User viewUser = new User();
        viewUser.setNickname(user.getNickname());
        return JsonResult.result(EnumCode.OK.getValue(),"登陆成功", viewUser);
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
