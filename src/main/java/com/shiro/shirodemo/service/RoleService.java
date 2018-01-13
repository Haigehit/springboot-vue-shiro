package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.Role;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.vo.RoleVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
public interface RoleService extends IService<Role> {

    /**
     * @desc: 查询角色
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    List<Role> findRoleByPage(Page<Role> page,ParamsDto dto);

    /**
     * @desc: 新增角色
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    Object addRoles(RoleVo vo);

    /**
     * @desc: 删除角色
     * 
     * @author: jwy
     * @date: 2017/12/26
     */
    Object delRole(String[] ids);

    /**
     * 绑定角色下拉框
     *
     * @return
     */
    List<Role> findAllRoles();
}
