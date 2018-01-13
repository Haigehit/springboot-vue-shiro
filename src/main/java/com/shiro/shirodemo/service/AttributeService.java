package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.Attribute;
import com.shiro.shirodemo.pojo.dto.ParamsDto;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-26
 */
public interface AttributeService extends IService<Attribute> {


    /**
     * @desc: 查询属性
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    List<Attribute> findAttributesByPage(Page<Attribute> page, ParamsDto dto);

    /**
     * @desc: 新增属性
     * 
     * @author: jwy
     * @date: 2017/12/27
     */
    Object addAttributes(Attribute attribute);

    /**
     * @desc: 删除属性
     * 
     * @author: jwy
     * @date: 2017/12/27
     */
    Object delAttributes(String[] ids);

}
