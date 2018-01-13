package com.shiro.shirodemo.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.shiro.shirodemo.entity.User;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.dto.UserInfoDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
public interface UserMapper extends BaseMapper<User> {

    /**
     * @desc: 查询用户
     *
     * @param page 分页
     * @param dto 参数dto
     * @author: jwy
     * @date: 2017/12/19
     */
    List<UserDto> findUserByPage(Pagination page,@Param("dto") ParamsDto dto);

    /**
     * @desc: 登陆验证
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    List<UserInfoDto> checkUser(@Param("name") String name, @Param("pass") String pass);
}