package com.shiro.shirodemo.api;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.plugins.Page;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.Enum.EnumRoleType;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.vo.UserVo;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import com.xiaoleilu.hutool.crypto.SecureUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;

/**
 * @desc: 用户接口
 * 
 * @author: jwy
 * @date: 2017/12/15
 */
@RestController
@RequestMapping(value = "UserApi/v1")
public class UserApi {

    @Autowired
    private UserService userService;

    /**
     * @desc: 查询用户
     *
     * @param dto 参数dto
     * @author: jwy
     * @date: 2017/12/19
     */
    @RequestMapping(value = "/findUserByPage",method = RequestMethod.GET)
    public Object findUserByPage(ParamsDto dto) {
        Page<UserDto> page = new Page<>(dto.getStartPage(),dto.getPageSize());
        dto.setType(EnumRoleType.USER.getValue());
        List<UserDto> list = userService.findUserByPage(page,dto);
        return JsonResult.result(EnumCode.OK.getValue(),"请求成功", list,page.getTotal());
    }

    /**
     * @desc: 新增用户
     * 
     * @author: jwy
     * @date: 2017/12/25
     */
    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public Object addUser(@Valid UserVo userVo, BindingResult bindingResult) {
        return userService.addUser(userVo);
    }

    /**
     * @desc: 批量删除用户
     * 
     * @author: jwy
     * @date: 2017/12/25
     */
    @RequestMapping(value = "/delUsers",method = RequestMethod.POST)
    public Object delUsers(ParamsDto dto) {
        if (null == dto.getIds() || dto.getIds().length == 0) {
            return JsonResult.result(EnumCode.BAD_REQUEST.getValue(),EnumCode.BAD_REQUEST.getText());
        }
        return userService.delUsers(dto.getIds());
    }

    /**
     * 修改用户状态
     *
     * @param dto
     * @return
     */
    @RequestMapping(value = "/editUserStatus", method = RequestMethod.POST)
    public Object editUserStatus(ParamsDto dto) {
        if (StringUtils.isEmpty(dto.getId()) || null == dto.getType()) {
            return JsonResult.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return userService.editUserStatus(dto.getId(), dto.getType());
    }
}
