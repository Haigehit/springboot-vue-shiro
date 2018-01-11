package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.RolePermission;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.entity.UserRole;
import com.shiro.shirodemo.exception.MyException;
import com.shiro.shirodemo.mapper.UserMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.vo.UserVo;
import com.shiro.shirodemo.service.UserRoleService;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import com.xiaoleilu.hutool.crypto.SecureUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    private UserRoleService userRoleService;

    /**
     * @desc: 新增用户
     *
     * @author: jwy
     * @date: 2017/12/16
     * @param vo 用户vo
     */
    @Transactional
    public Object addUser(UserVo vo){

        Map<String,Object> map = new HashMap<>();
        map.put("nickname",vo.getName().trim());
        List<User> list = super.baseMapper.selectByMap(map);
        if (list.size() > 0) {
            throw  new MyException( JsonResult.result(EnumCode.BAD_REQUEST.getValue(),"昵称已经存在",null));
        }
        User user = new User();
        user.setNickname(vo.getName());
        user.setPswd(SecureUtil.md5(vo.getPass()));
        user.setEmail(vo.getEmail());
        user.setCreateTime(new Date());
        super.baseMapper.insert(user);

        UserRole ur = new UserRole();
        ur.setUid(user.getId());
        ur.setRid(vo.getRole());
        Boolean result =  userRoleService.insert(ur);

        if (!result) {
            throw new MyException(JsonResult.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(),EnumCode.INTERNAL_SERVER_ERROR.getText(),null));
        }
        return JsonResult.result(EnumCode.OK.getValue(),"新增成功");
    }

    /**
     * @desc: 查询用户
     *
     * @param page 分页
     * @param dto 参数dto
     * @author: jwy
     * @date: 2017/12/19
     */
    public List<UserDto> findUserByPage(Page<UserDto> page, ParamsDto dto) {
        List<UserDto> list = super.baseMapper.findUserByPage(page,dto);
        return list;
    }

    /**
     * @desc: 批量删除用户
     *
     * @author: jwy
     * @date: 2017/12/25
     */
    public Object delUsers(String[] ids) {
        for (String id : ids) {
            baseMapper.deleteById(id);
        }
        return JsonResult.result(EnumCode.OK.getValue(),"删除成功");
    }

    /**
     * @desc: 登陆验证
     *
     * @author: jwy
     * @date: 2017/12/27
     */
   public  List<User> checkUser(String name, String pass) {
       return super.baseMapper.checkUser(name,pass);
   }

    /**
     * 修改用户状态
     *
     * @param id
     * @param type
     * @return
     */
    public Object editUserStatus(String id, Integer type) {
        User user = new User();
        user.setId(id);
        user.setStatus(type);
        Integer row = super.baseMapper.updateById(user);
        return row > 0 ? ResultUtil.result(EnumCode.OK.getValue(), type == 0 ? "已禁止登陆" : "已允许登陆") : ResultUtil.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(), "修改失败");
    }


}
