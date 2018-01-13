package com.shiro.shirodemo.service.ipml;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.LoginLog;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.entity.UserRole;
import com.shiro.shirodemo.exception.MyException;
import com.shiro.shirodemo.mapper.UserMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.dto.UserInfoDto;
import com.shiro.shirodemo.pojo.vo.UserVo;
import com.shiro.shirodemo.service.LoginLogService;
import com.shiro.shirodemo.service.UserRoleService;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.ResultUtil;
import com.xiaoleilu.hutool.crypto.SecureUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    @Autowired
    private LoginLogService loginLogService;


    /**
     * 登录
     *
     * @param name
     * @param pass
     * @param session
     * @param request
     * @return
     */
    public Object login(String name, String pass, HttpSession session, HttpServletRequest request) {

        UsernamePasswordToken upToken = new UsernamePasswordToken(name, SecureUtil.md5(pass));
        Subject subject = SecurityUtils.getSubject();
        subject.login(upToken);
        UserInfoDto userInfoDto = (UserInfoDto) subject.getPrincipal();
        session.setAttribute("user", userInfoDto);

        Map<String, String> map = new HashMap<>();
        map.put("userName", userInfoDto.getUsername());

        // 登录日志
        LoginLog loginLog = new LoginLog();
        loginLog.setUid(userInfoDto.getId());
        loginLog.setLoginTime(new Date());
        loginLog.setLoginIP(request.getRemoteAddr());
        loginLog.setLoginTotal(loginLogService.findMaxLoginTatalByUserId(userInfoDto.getId())); // 登录总次数
        loginLogService.insert(loginLog);


        return ResultUtil.result(EnumCode.OK.getValue(), "登陆成功", JSON.toJSON(map));
    }

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
            throw new MyException(ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), "昵称已经存在", null));
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
            throw new MyException(ResultUtil.result(EnumCode.INTERNAL_SERVER_ERROR.getValue(), EnumCode.INTERNAL_SERVER_ERROR.getText(), null));
        }
        return ResultUtil.result(EnumCode.OK.getValue(), "新增成功");
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
        return ResultUtil.result(EnumCode.OK.getValue(), "删除成功");
    }

    /**
     * @desc: 登陆验证
     *
     * @author: jwy
     * @date: 2017/12/27
     */
    public List<UserInfoDto> checkUser(String name, String pass) {
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
