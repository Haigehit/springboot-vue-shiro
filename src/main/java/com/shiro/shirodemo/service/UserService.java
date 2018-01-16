package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.dto.UserInfoDto;
import com.shiro.shirodemo.pojo.vo.UserInfoVo;
import com.shiro.shirodemo.pojo.vo.UserVo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
     * 登录
     *
     * @param name
     * @param pass
     * @param session
     * @param request
     * @return
     */
    Object login(String name, String pass, HttpSession session, HttpServletRequest request);

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
    List<UserInfoDto> checkUser(String name, String pass);

    /**
     * 修改用户状态
     *
     * @param id
     * @param type
     * @return
     */
    Object editUserStatus(String id, Integer type);

    /**
     * 用户修改用户个人信息
     *
     * @author: jwy
     * @date: 2018/1/15
     */
    Object editUserInfo(UserInfoVo vo);
}
