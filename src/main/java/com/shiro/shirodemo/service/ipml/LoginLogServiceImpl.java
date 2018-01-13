package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.LoginLog;
import com.shiro.shirodemo.mapper.LoginLogMapper;
import com.shiro.shirodemo.pojo.dto.LoginTotalDto;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.service.LoginLogService;
import com.shiro.shirodemo.utils.ResultUtil;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author jwy
 * @since 2018-01-11
 */
@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {
    /**
     * 查询登录次数
     *
     * @param id
     * @return
     */
    public Integer findMaxLoginTatalByUserId(String id) {
        return super.baseMapper.findMaxLoginTatalByUserId(id);
    }

    /**
     * 用户登录日志
     *
     * @param dto 参数dto
     * @return
     */
    public List<LoginLog> findUserLoginLogByPage(Page<LoginLog> page, ParamsDto dto) {
        return super.baseMapper.findUserLoginLogByPage(page, dto);
    }

    /**
     * 统计登陆
     *
     * @author: jwy
     * @date: 2018/1/11
     */
    public Object findUserLoginTotal() {

        List<LoginLog> loignList = super.baseMapper.findUserLoginTotal();
        String[] strName = new String[loignList.size()];
        int[] itotal = new int[loignList.size()];
        for (int i = 0, j = loignList.size(); i < j; i++) {
            strName[i] = loignList.get(i).getUserName();
            itotal[i] = loignList.get(i).getLoginTotal();
        }
        List<LoginTotalDto> listLoginTotal = new ArrayList<>();
        LoginTotalDto loginTotalDto = new LoginTotalDto();
        loginTotalDto.setName(strName);
        loginTotalDto.setTotal(itotal);
        listLoginTotal.add(loginTotalDto);
        return ResultUtil.result(EnumCode.OK.getValue(), EnumCode.OK.getText(), listLoginTotal);
    }
}
