package com.shiro.shirodemo.service.ipml;

import com.shiro.shirodemo.entity.UserRole;
import com.shiro.shirodemo.mapper.UserRoleMapper;
import com.shiro.shirodemo.service.UserRoleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jwy
 * @since 2017-12-16
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements UserRoleService {
	
}
