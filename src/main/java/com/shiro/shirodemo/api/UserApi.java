package com.shiro.shirodemo.api;

import com.baomidou.mybatisplus.plugins.Page;
import com.shiro.shirodemo.Enum.EnumCode;
import com.shiro.shirodemo.Enum.EnumRoleType;
import com.shiro.shirodemo.api.base.BaseApi;
import com.shiro.shirodemo.ftp.UploadUtil;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.pojo.dto.UserDto;
import com.shiro.shirodemo.pojo.dto.UserInfoDto;
import com.shiro.shirodemo.pojo.vo.UserInfoVo;
import com.shiro.shirodemo.pojo.vo.UserVo;
import com.shiro.shirodemo.service.UserService;
import com.shiro.shirodemo.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @desc: 用户接口
 *
 * @author: jwy
 * @date: 2017/12/15
 */
@RestController
@RequestMapping(value = "UserApi/v1")
public class UserApi extends BaseApi {

    @Autowired
    private UserService userService;

    Map<String, String> uploadImg;

    /**
     * 上传用户头像
     *
     * @author: jwy
     * @date: 2018/1/13
     */
    @ResponseBody
    @RequestMapping(value = "/uploadHander", method = RequestMethod.POST)
    public String uploadLogo(HttpServletRequest request) {
        uploadImg = new HashMap<String, String>();
        uploadImg = UploadUtil.uploadImage(request, "vue_shiro_photo/userImg");
        return uploadImg.get("userImg");
    }

    @RequestMapping("/upload")
    @ResponseBody
    public String handleFileUpload(MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                /*
                 * 这段代码执行完毕之后，图片上传到了工程的跟路径； 大家自己扩散下思维，如果我们想把图片上传到
                 * d:/files大家是否能实现呢？ 等等;
                 * 这里只是简单一个例子,请自行参考，融入到实际中可能需要大家自己做一些思考，比如： 1、文件路径； 2、文件名；
                 * 3、文件格式; 4、文件大小的限制;
                 */
                BufferedOutputStream out = new BufferedOutputStream(
                        new FileOutputStream(new File(
                                file.getOriginalFilename())));
                System.out.println(file.getName());
                out.write(file.getBytes());
                out.flush();
                out.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            } catch (IOException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            }

            return "上传成功";

        } else {
            return "上传失败，因为文件是空的.";
        }
    }


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
        return ResultUtil.result(EnumCode.OK.getValue(), "请求成功", list, page.getTotal());
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
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
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
            return ResultUtil.result(EnumCode.BAD_REQUEST.getValue(), EnumCode.BAD_REQUEST.getText());
        }
        return userService.editUserStatus(dto.getId(), dto.getType());
    }

    /**
     * 用户修改用户个人信息
     *
     * @author: jwy
     * @date: 2018/1/15
     */
    @RequestMapping(value = "/editUserInfo", method = RequestMethod.POST)
    public Object editUserInfo(UserInfoVo vo) {
        return userService.editUserInfo(vo);
    }

}
