package com.shiro.shirodemo.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.shiro.shirodemo.entity.LoginLog;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author jwy
 * @since 2018-01-11
 */
public interface LoginLogMapper extends BaseMapper<LoginLog> {

    /**
     * 查询登录次数
     *
     * @param id
     * @return
     */
    Integer findMaxLoginTatalByUserId(@Param("id") String id);

    /**
     * 用户登录日志
     *
     * @param dto 参数dto
     * @return
     */
    List<LoginLog> findUserLoginLogByPage(Pagination page, @Param("dto") ParamsDto dto);

    /**
     * 查询用户登录总次数
     *
     * @author: jwy
     * @date: 2018/1/11
     */
    List<LoginLog> findUserLoginTotal();
}