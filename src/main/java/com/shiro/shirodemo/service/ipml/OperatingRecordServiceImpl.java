package com.shiro.shirodemo.service.ipml;

import com.baomidou.mybatisplus.plugins.Page;
import com.shiro.shirodemo.entity.OperatingRecord;
import com.shiro.shirodemo.mapper.OperatingRecordMapper;
import com.shiro.shirodemo.pojo.dto.ParamsDto;
import com.shiro.shirodemo.service.OperatingRecordService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jwy
 * @since 2018-01-07
 */
@Service
public class OperatingRecordServiceImpl extends ServiceImpl<OperatingRecordMapper, OperatingRecord> implements OperatingRecordService {

    /**
     * 查询操作记录
     *
     * @param dto
     * @return
     */
    public List<OperatingRecord> findOperatingRecordByPage(Page<OperatingRecord> page, ParamsDto dto){
        return super.baseMapper.findOperatingRecordByPage(page,dto);
    }
}
