package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.Role;
import com.shiro.shirodemo.mapper.RoleMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.vo.RoleVo;
import com.shiro.shirodemo.service.RoleService;
import com.shiro.shirodemo.utils.ResultUtil;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    /**
     * @desc: 查询角色
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    public List<Role> findRoleByPage(Page<Role> page,ParamsDto dto) {
        return super.baseMapper.findRoleByPage(page,dto);
    }

    /**
     * @desc: 新增角色
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    public Object addRoles(RoleVo vo) {
        Role r = new Role();
        r.setName(vo.getName());
        r.setDescription(vo.getDescription());
        super.baseMapper.insert(r);
        return ResultUtil.result(EnumCode.OK.getValue(), "新增成功");
    }

    /**
     * @desc: 删除角色
     *
     * @author: jwy
     * @date: 2017/12/26
     */
    public Object delRole(String[] ids) {

        for (String id : ids) {
            super.baseMapper.deleteById(id);
        }
        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }

    /**
     * 绑定角色下拉框
     *
     * @return
     */
   public List<Role> findAllRoles() {
       return super.baseMapper.findAllRoles();
   }
}
