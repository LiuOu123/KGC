package com.kgc.service.impl;

import com.kgc.mapper.userimgMapper;
import com.kgc.pojo.userimg;
import com.kgc.pojo.userimgExample;
import com.kgc.service.ZhangUserimgService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ZhangUserimgService")
public class ZhangUserimgServiceImpl implements ZhangUserimgService {
    @Resource
    userimgMapper userimgMapper;

    @Override
    public List<userimg> selectByExample(userimgExample example) {
        return userimgMapper.selectByExample(example);
    }
}
