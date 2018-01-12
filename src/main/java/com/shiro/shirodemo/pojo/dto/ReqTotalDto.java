package com.shiro.shirodemo.pojo.dto;

/**
 * 访问次数统计
 *
 * @author: jwy
 * @date: 2018/1/11
 */
public class ReqTotalDto {

    /**
     * 名称
     */
    private String Na;

    /**
     * 记录
     */
    private int total;

    /**
     * 类型 1 post get ..  2 用户
     */
    private Integer type;

    public String getNa() {
        return Na;
    }

    public void setNa(String na) {
        Na = na;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
