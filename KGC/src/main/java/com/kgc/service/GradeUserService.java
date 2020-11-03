package com.kgc.service;

import com.kgc.pojo.GradeUser;
import com.kgc.pojo.GradeUserExample;

import java.util.List;

public interface GradeUserService {
    List<GradeUser> studengtselectClass(GradeUserExample example);
    List<GradeUser> selectByExample(GradeUserExample example);
}
