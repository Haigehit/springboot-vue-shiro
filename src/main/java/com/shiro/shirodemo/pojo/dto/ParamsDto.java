package com.shiro.shirodemo.pojo.dto;

import java.io.Serializable;
import java.util.Arrays;

/**
 * @desc: 参数dto
 * @author: jwy
 * @date: 2017/12/19
 */
public class ParamsDto implements Serializable{

    /**
     * id
     */
    private String id;

    /**
     * id数组
     */
    private String[] ids;

    /**
     * 类型
     */
    private Integer type;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 关键字
     */
    private String keyword;

    /**
     * 开始页码
     */
    private Integer startPage;

    /**
     * 每页大小
     */
    private Integer pageSize;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String[] getIds() {
        return ids;
    }

    public void setIds(String[] ids) {
        this.ids = ids;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public Integer getStartPage() {
        return startPage;
    }

    public void setStartPage(Integer startPage) {
        this.startPage = startPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }


    @Override
    public String toString() {
        return "ParamsDto{" +
                "id='" + id + '\'' +
                ", ids=" + Arrays.toString(ids) +
                ", type=" + type +
                ", status=" + status +
                ", keyword='" + keyword + '\'' +
                ", startPage=" + startPage +
                ", pageSize=" + pageSize +
                '}';
    }
}
