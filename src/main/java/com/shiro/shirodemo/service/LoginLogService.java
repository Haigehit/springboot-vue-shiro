package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.LoginLog;
import com.shiro.shirodemo.pojo.dto.ParamsDto;

import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author jwy
 * @since 2018-01-11
 */
public interface LoginLogService extends IService<LoginLog> {

    /**
     * 查询登录次数
     *
     * @param id
     * @return
     */
    Integer findMaxLoginTatalByUserId(String id);


    /**
     * 用户登录日志
     *
     * @param dto 参数dto
     * @return
     */
    List<LoginLog> findUserLoginLogByPage(Page<LoginLog> page, ParamsDto dto);

    /**
     * 统计登陆
     *
     * @author: jwy
     * @date: 2018/1/11
     */
    Object findUserLoginTotal();
}
