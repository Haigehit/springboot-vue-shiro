package com.shiro.shirodemo.pojo.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * @desc: 属性明细vo
 * 
 * @author: jwy
 * @date: 2017/12/29
 */
public class AttributeDetailVo {

    /**
     * 属性id
     */
    @NotBlank(message = "属性id不能为空")
    private String id;
    /**
     * 属性明细名称
     */
    @NotBlank(message = "属性明细名称不能为空")
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
