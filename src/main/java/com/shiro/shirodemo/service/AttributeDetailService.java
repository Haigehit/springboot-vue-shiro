package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.shiro.shirodemo.entity.Attribute;
import com.shiro.shirodemo.entity.AttributeDetail;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.pojo.dto.AttributeDetailDto;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.vo.AttributeDetailVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-26
 */
public interface AttributeDetailService extends IService<AttributeDetail> {


    /**
     * @desc: 查询属性明细
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    List<AttributeDetail> findAttributeDetailByPage(Page<AttributeDetail> page, ParamsDto dto);

    /**
     * @desc: 新增属性明细
     * 
     * @author: jwy
     * @date: 2017/12/27
     */
    Object addAttributeDetail(AttributeDetailVo attributeDetail);

    /**
     * @desc: 根据属性id查询属性明细
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    List<AttributeDetailDto> findAttributeDetailByAttrId(String attrId);

    /**
     * @desc: 删除属性明细
     * 
     * @author: jwy
     * @date: 2017/12/27
     */
    Object delAttributeDetails(String[] ids);
}
