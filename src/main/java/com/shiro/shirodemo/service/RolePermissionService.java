package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.RolePermission;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.RolePermisVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
public interface RolePermissionService extends IService<RolePermission> {

    /**
     * 添加角色权限
     *
     * @param vo
     * @return
     */
    Object addRolesPermis(RolePermisVo vo);

    /**
     * 根据角色查询角色权限
     *
     * @param dto
     * @return
     */
    List<RolePermission> findRolesPermisByRole(ParamsDto dto);

    /**
     * 根据角色id查询记录数
     * @param roleId
     * @return
     */
    Integer findCountByRole(String roleId,String url);
}
