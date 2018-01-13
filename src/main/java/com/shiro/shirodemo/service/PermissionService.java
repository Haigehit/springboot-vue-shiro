package com.shiro.shirodemo.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.shiro.shirodemo.entity.Permission;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.PermisDto;
import com.shiro.shirodemo.pojo.vo.PermisVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
public interface PermissionService extends IService<Permission> {

    /**
     * @desc: 查询菜单
     * 
     * @author: jwy
     * @date: 2017/12/26
     */
    List<Permission> findPermissionByPage(Page<Permission> page, ParamsDto dto);

    /**
     * @desc: 新增菜单
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    Object addPermissions(PermisVo vo);

    /**
     * @desc: 删除菜单
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    Object delPermis(String[] ids);

    /**
     * @desc: 根据菜单查询菜单
     *
     * @author: jwy
     * @date: 2017/12/28
     */
    List<Permission> findPermissionByName(String name);

    /**
     * @desc: 根据父级id查询上级菜单
     * 
     * @author: jwy
     * @date: 2018/1/2
     */
    List<Permission> findLastPermissionByType(String type);

    /**
     * @desc: 查询所有父级菜单绑定树形
     *
     * @author: jwy
     * @date: 2018/1/3
     */
    List<PermisDto> findBasePermission();

    /**
     * 根据url查询记录
     *
     * @param requestUrl
     * @return
     */
    Integer findCountByUrl(String requestUrl);
}
