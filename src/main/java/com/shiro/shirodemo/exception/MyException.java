package com.shiro.shirodemo.exception;

/**
 * @desc: 异常处理
 * 
 * @author: jwy
 * @date: 2017/12/15
 */
public class MyException extends  RuntimeException{

    /**
     * 返回结果
     */
    private Object result;

    public MyException(Object result) {
        this.result = result;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
