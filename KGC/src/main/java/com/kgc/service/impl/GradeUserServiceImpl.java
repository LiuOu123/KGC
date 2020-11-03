package com.kgc.service.impl;

import com.kgc.mapper.GradeUserMapper;
import com.kgc.pojo.GradeUser;
import com.kgc.pojo.GradeUserExample;
import com.kgc.service.GradeUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("GradeUserService")
public class GradeUserServiceImpl implements GradeUserService {
    @Resource
    GradeUserMapper gradeUserMapper;
    @Override
    public List<GradeUser> studengtselectClass(GradeUserExample example) {
        return gradeUserMapper.studengtselectClass(example);
    }

    @Override
    public List<GradeUser> selectByExample(GradeUserExample example) {
        return gradeUserMapper.selectByExample(example);
    }
}
