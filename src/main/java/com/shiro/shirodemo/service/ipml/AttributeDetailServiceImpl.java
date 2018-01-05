package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.Attribute;
import com.shiro.shirodemo.entity.AttributeDetail;
import com.shiro.shirodemo.mapper.AttributeDetailMapper;
import com.shiro.shirodemo.pojo.dto.AttributeDetailDto;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.vo.AttributeDetailVo;
import com.shiro.shirodemo.service.AttributeDetailService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.utils.JsonResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

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
public class AttributeDetailServiceImpl extends ServiceImpl<AttributeDetailMapper, AttributeDetail> implements AttributeDetailService {

    /**
     * @desc: 查询属性明细
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    public List<AttributeDetail> findAttributeDetailByPage(Page<AttributeDetail> page, ParamsDto dto) {
        return super.baseMapper.findAttributeDetailByPage(page,dto);
    }

    /**
     * @desc: 新增属性明细
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    public Object addAttributeDetail(AttributeDetailVo vo) {
        AttributeDetail attributeDetail = new AttributeDetail();
        attributeDetail.setAttrId(vo.getId());
        attributeDetail.setName(vo.getName());
        Integer rows = super.baseMapper.insert(attributeDetail);
      if (rows > 0) {
          return JsonResult.result(EnumCode.OK.getValue(),"新增成功");
      }
      return JsonResult.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(),"新增失败");
    }

    /**
     * @desc: 根据属性id查询属性明细
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    public List<AttributeDetailDto> findAttributeDetailByAttrId(String attrId) {
        return super.baseMapper.findAttributeDetailByAttrId(attrId);
    }

    /**
     * @desc: 删除属性明细
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    public Object delAttributeDetails(String[] ids) {

        for (String id : ids) {
            super.baseMapper.deleteById(id);
        }

        return JsonResult.result(EnumCode.OK.getValue(),"删除成功");
    }
}
