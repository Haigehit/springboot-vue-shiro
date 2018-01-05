package com.shiro.shirodemo.exception;

import com.alibaba.fastjson.JSONArray;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import org.apache.shiro.ShiroException;
import org.apache.shiro.authc.AuthenticationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @desc: 统一异常处理
 * 
 * @author: jwy
 * @date: 2017/12/15
 */
@ControllerAdvice
public class ExceptionHandle {

    private final  static Logger log = LoggerFactory.getLogger(ExceptionHandle.class);

    @ExceptionHandler(value = {Exception.class})
    @ResponseBody
    public Object handle(Exception e) {
        if (e instanceof MyException) {
           MyException myException = (MyException)e;
           return myException.getResult();
        } else if (e instanceof AuthenticationException) {
            AuthenticationException authenticationException = (AuthenticationException)e;
            return JSONArray.toJSON(JsonResult.result(EnumCode.LOGIN_FAIL.getValue(),authenticationException.getMessage()));
        }
        else {
            log.info("系统异常 {}",e);
            return JsonResult.result(-1,"未知错误");
        }
    }
}
