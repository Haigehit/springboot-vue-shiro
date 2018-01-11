package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.vo.UserVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
public interface UserService extends IService<User> {

    /**
     * @desc: 新增用户
     *
     * @author: jwy
     * @date: 2017/12/16
     * @param userVo 用户vo
     */
    Object addUser(UserVo userVo);


    /**
     * @desc: 查询用户
     *
     * @param dto 参数dto
     * @author: jwy
     * @date: 2017/12/19
     */
    List<UserDto> findUserByPage(Page<UserDto> page, ParamsDto dto);

    /**
     * @desc: 批量删除用户
     * 
     * @author: jwy
     * @date: 2017/12/25
     */
    Object delUsers(String[] ids);

    /**
     * @desc: 登陆验证
     * 
     * @author: jwy
     * @date: 2017/12/27
     */
    List<User> checkUser(String name, String pass);

    /**
     * 修改用户状态
     *
     * @param id
     * @param type
     * @return
     */
    Object editUserStatus(String id, Integer type);
}
