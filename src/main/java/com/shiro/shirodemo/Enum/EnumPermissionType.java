package com.shiro.shirodemo.Enum;


/**
 * @desc: 菜单类型
 * 
 * @author: jwy
 * @date: 2017/12/26
 */
public enum EnumPermissionType {
    /**
     * 页面
     */
    PAGE(200, "页面"),
    /**
     * 按钮
     */
    BUTTON(303, "按钮");

    private final Integer value;
    private final String text;

    private EnumPermissionType(Integer value, String text) {
        this.value = value;
        this.text = text;
    }

    /**
     * 获取value
     */
    public Integer getValue() {
        return this.value;
    }

    /**
     * 获取Text
     */
    public String getText() {
        return this.text;
    }
}
