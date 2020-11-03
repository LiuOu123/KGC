package com.kgc.service;

import com.kgc.pojo.Works;
import com.kgc.pojo.WorksExample;

import java.util.List;

public interface worksService {
    int insertSelective(Works record);
    List<Works> workshuifu(WorksExample example);
    List<Works> selectByExample(WorksExample example);
}
