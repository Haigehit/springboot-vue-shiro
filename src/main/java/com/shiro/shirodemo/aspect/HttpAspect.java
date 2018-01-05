package com.shiro.shirodemo.aspect;

import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.api.base.BaseApi;
import com.shiro.shirodemo.entity.Permission;
import com.shiro.shirodemo.entity.RolePermission;
import com.shiro.shirodemo.exception.MyException;
import com.shiro.shirodemo.service.PermissionService;
import com.shiro.shirodemo.service.RolePermissionService;
import com.shiro.shirodemo.utils.JsonResult;
import com.shiro.shirodemo.utils.ResultUtil;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @desc: Aspect
 *
 * @author: jwy
 * @date: 2017/12/15
 */
@Aspect
@Component
public class HttpAspect extends BaseApi{

    @Autowired
    private RolePermissionService rolePermissionService;

    @Autowired
    private PermissionService permissionService;

    private final static Logger log = LoggerFactory.getLogger(HttpAspect.class);

    @Pointcut("execution(public * com.shiro.shirodemo.api..*(..))")
    public void log() {

    }
    /**
     * @desc: 记录请求
     * 
     * @author: jwy
     * @date: 2017/12/15
     */
    @Before("log()")
    public void doBefore(JoinPoint joinPoint) {
        shiroFilter(joinPoint);
    }

    /**
     * @desc: 响应请求
     * 
     * @author: jwy
     * @date: 2017/12/15
     */
    @After("log()")
    public void doAfter() {
        log.info("========================== ↓响应请求↓ ==========================");
    }

    /**
     * @desc: 打印返回值
     * 
     * @author: jwy
     * @date: 2017/12/15
     */
    @AfterReturning(returning = "obj",pointcut = "log()")
    public void doAfterReturnning(Object obj) {
         log.info("请求返回值：{}",obj);
    }


    /**
     * @desc: 统一参数验证处理
     *
     * @author: jwy
     * @date: 2017/12/15
     */
    @Around("execution(* com.shiro.shirodemo.api..*(..)) && args(..,bindingResult)")
    public Object doAround(ProceedingJoinPoint pjp, BindingResult bindingResult) throws Throwable {

        shiroFilter(pjp);

        Object retVal;
        if (bindingResult.hasErrors()) {
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(),bindingResult.getFieldError().getDefaultMessage(),null);
        } else {
            retVal = pjp.proceed();
        }
        return retVal;
    }

    /**
     * @desc: 权限拦截器
     *
     * @author: jwy
     * @date: 2017/12/28
     */
    public void shiroFilter(JoinPoint joinPoint){

            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            HttpServletRequest request = attributes.getRequest();


        log.info("========================== ↓收到请求↓ ==========================");
        log.info("请求url:{}",request.getRequestURI());
        log.info("请求源ip:{}",request.getRemoteAddr());
        log.info("请求方式:{}",request.getMethod());
        log.info("请求方法:{}",joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName()+ "()");
        log.info("请求参数:{}",joinPoint.getArgs());
        log.info("getContextPath:{}",request.getContextPath());

        String requestUrl = request.getRequestURI().replaceAll(request.getContextPath(),"");
        Integer count = permissionService.findCountByUrl(requestUrl);
        if (count != 0){
            String roleId = super.getRoleId();
            if (StringUtils.isEmpty(roleId)) {
                log.info("无权访问");
                throw new MyException(JsonResult.result(EnumCode.FORBIDDEN.getValue(),EnumCode.FORBIDDEN.getText()));
            }
            Integer row = rolePermissionService.findCountByRole(roleId, requestUrl);
            if (row == 0) {
                log.info("无权访问:" + request.getRemoteAddr()+ request.getContextPath() + requestUrl);
                throw new MyException(JsonResult.result(EnumCode.FORBIDDEN.getValue(),EnumCode.FORBIDDEN.getText()));
            }
        } else {
            log.info("有权访问");
        }
    }
}
