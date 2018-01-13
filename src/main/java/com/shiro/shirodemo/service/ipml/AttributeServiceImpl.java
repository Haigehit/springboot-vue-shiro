package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.Attribute;
import com.shiro.shirodemo.mapper.AttributeMapper;
import com.shiro.shirodemo.pojo.dto.AttributeDetailDto;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.service.AttributeDetailService;
import com.shiro.shirodemo.service.AttributeService;
import com.shiro.shirodemo.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jwy
 * @since 2017-12-26
 */
@Service
public class AttributeServiceImpl extends ServiceImpl<AttributeMapper, Attribute> implements AttributeService {

    @Autowired
    private AttributeDetailService attributeDetailService;

    /**
     * @desc: 查询属性
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    public List<Attribute> findAttributesByPage(Page<Attribute> page, ParamsDto dto) {
        return super.baseMapper.findAttributesByPage(page,dto);
    }

    /**
     * @desc: 新增属性
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    public Object addAttributes(Attribute attribute) {
        baseMapper.insert(attribute);
        return ResultUtil.result(EnumCode.OK.getValue(), "新增成功");
    }

    /**
     * @desc: 删除属性
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    @Transactional
    public Object delAttributes(String[] ids) {
        for (String id : ids) {
            super.baseMapper.deleteById(id);
            List<AttributeDetailDto> list = attributeDetailService.findAttributeDetailByAttrId(id);
            if (null != list && !list.isEmpty()) {
                for (int i = 0; i < list.size(); i++) {
                    attributeDetailService.deleteById(list.get(i).getId());
                }
            }
        }
        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }
}
