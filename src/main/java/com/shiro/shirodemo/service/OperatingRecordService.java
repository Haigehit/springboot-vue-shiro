package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.OperatingRecord;
import com.shiro.shirodemo.pojo.dto.ParamsDto;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2018-01-07
 */
public interface OperatingRecordService extends IService<OperatingRecord> {

    /**
     * 查询操作记录
     *
     * @param dto
     * @return
     */
    List<OperatingRecord> findOperatingRecordByPage(Page<OperatingRecord> page, ParamsDto dto);

    /**
     * 访问统计
     *
     * @author: jwy
     * @date: 2018/1/11
     */
    Object findUserReqTotal();
}
