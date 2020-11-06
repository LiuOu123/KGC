package com.kgc.service;

import com.kgc.pojo.userimg;
import com.kgc.pojo.userimgExample;

import java.util.List;

public interface ZhangUserimgService {
    List<userimg> selectByExample(userimgExample example);
}
