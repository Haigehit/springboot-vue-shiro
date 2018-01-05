package com.shiro.shirodemo.mapper;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.shiro.shirodemo.entity.Permission;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.PermisDto;
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
public interface PermissionMapper extends BaseMapper<Permission> {

    /**
     * @desc: 查询菜单
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    List<Permission> findPermissionByPage(Pagination page,@Param("dto") ParamsDto dto);

    /**
     * @desc: 根据菜单查询菜单
     * 
     * @author: jwy
     * @date: 2017/12/28
     */
    List<Permission> findPermissionByName(@Param("name") String name);

    /**
     * @desc: 查询所有父级菜单绑定下拉框
     *
     * @author: jwy
     * @date: 2018/1/2
     */
    List<Permission> findLastPermissionByType(@Param("type") String type);

    /**
     * @desc: 查询所有父级菜单绑定树形
     * 
     * @author: jwy
     * @date: 2018/1/3
     */
    List<PermisDto> findBasePermission();

    /**
     * @desc: 根据父级id查询菜单
     * 
     * @author: jwy
     * @date: 2018/1/3
     */
    List<PermisDto> findPermissionByFatherId(@Param("fatherId") String fatherId);

    /**
     * 根据url查询记录
     *
     * @param requestUrl
     * @return
     */
    Integer findCountByUrl(@Param("requestUrl") String requestUrl);
}