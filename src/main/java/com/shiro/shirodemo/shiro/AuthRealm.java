package com.shiro.shirodemo.shiro;

import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.entity.Permission;
import com.shiro.shirodemo.entity.Role;
import com.shiro.shirodemo.entity.User;
import com.shiro.shirodemo.exception.MyException;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.ShiroException;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AuthRealm extends AuthorizingRealm {

    /**
     * 日志打印
     */
    private final static Logger log = LoggerFactory.getLogger(AuthRealm.class);

    /**
     * 用户
     */
    @Autowired
    private UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals){
        //获取当前登录的用户名,等价于(String)principals.fromRealm(this.getName()).iterator().next()
        String currentUsername = (String)super.getAvailablePrincipal(principals);
//      List<String> roleList = new ArrayList<String>();
//      List<String> permissionList = new ArrayList<String>();
//      //从数据库中获取当前登录用户的详细信息
//      User user = userService.getByUsername(currentUsername);
//      if(null != user){
//          //实体类User中包含有用户角色的实体类信息
//          if(null!=user.getRoles() && user.getRoles().size()>0){
//              //获取当前登录用户的角色
//              for(Role role : user.getRoles()){
//                  roleList.add(role.getName());
//                  //实体类Role中包含有角色权限的实体类信息
//                  if(null!=role.getPermissions() && role.getPermissions().size()>0){
//                      //获取权限
//                      for(Permission pmss : role.getPermissions()){
//                          if(!StringUtils.isEmpty(pmss.getPermission())){
//                              permissionList.add(pmss.getPermission());
//                          }
//                      }
//                  }
//              }
//          }
//      }else{
//          throw new AuthorizationException();
//      }
//      //为当前用户设置角色和权限
//      SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
//      simpleAuthorInfo.addRoles(roleList);
//      simpleAuthorInfo.addStringPermissions(permissionList);
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        //实际中可能会像上面注释的那样从数据库取得

        System.out.println("_________________________"+currentUsername);
        //添加一个角色,不是配置意义上的添加,而是证明该用户拥有admin角色
        //添加权限
        simpleAuthorInfo.addStringPermission("/admin/index.html");
        simpleAuthorInfo.addStringPermission("/admin/left.html");
        simpleAuthorInfo.addStringPermission("/admin/info.html");
        simpleAuthorInfo.addStringPermission("/admin/user/list.html");
        System.out.println("已为用户[mike]赋予了[admin]角色和[admin:manage]权限");
        return simpleAuthorInfo;
        //若该方法什么都不做直接返回null的话,就会导致任何用户访问/admin/listUser.jsp时都会自动跳转到unauthorizedUrl指定的地址
        //详见applicationContext.xml中的<bean id="shiroFilter">的配置
    }

    /**
     * @desc: 授权
     * 
     * @date: 2017/12/18
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        log.info("======================= 认证登陆 ======================");
        // 获取用户输入的token
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        String name = upToken.getUsername();
        String pass = String.valueOf(upToken.getPassword());
        List<User> list = userService.checkUser(name,pass);
        User user = null;
        if (null == list || list.isEmpty()) {
            throw new AuthenticationException("账号或密码错误");
        }else if(list.get(0).getStatus() == 0){
            /**
             * 账号被禁用
             */
            throw new AuthenticationException("账号已被禁止登陆");
        }else{
            user = list.get(0);
            //登录成功
            //更新登录时间 last login time
            user.setLastLoginTime(new Date());
            userService.updateById(user);
        }
        log.info("======================= 登陆成功 ======================");
        return new SimpleAuthenticationInfo(user, user.getPswd(), getName());
    }
}
