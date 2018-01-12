package com.shiro.shirodemo.mapper;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.shiro.shirodemo.entity.OperatingRecord;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.ReqTotalDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author jwy
 * @since 2018-01-07
 */
public interface OperatingRecordMapper extends BaseMapper<OperatingRecord> {

    /**
     * 查询操作记录
     *
     * @param page 分页
     * @param dto 参数dto
     * @return
     */
    List<OperatingRecord> findOperatingRecordByPage(Pagination page, @Param("dto") ParamsDto dto);

    /**
     * 统计所有 请求
     *
     * @author: jwy
     * @date: 2018/1/11
     */
    List<ReqTotalDto> findAllRequstCount();
}