package com.shiro.shirodemo.Enum;

public enum EnumRoleType {

    ADMIN(1, "最高管理员"),
    USER(2, "普通用户");

    private final int value;
    private final String text;

    EnumRoleType(int value, String text) {
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
