package com.kgc.service.impl;

import com.kgc.mapper.WorksMapper;
import com.kgc.pojo.Works;
import com.kgc.pojo.WorksExample;
import com.kgc.service.worksService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("worksService")
public class worksServiceImpl implements worksService {
@Resource
WorksMapper worksMapper;
    @Override
    public int insertSelective(Works record) {
        return worksMapper.insertSelective(record);
    }

    @Override
    public List<Works> workshuifu(WorksExample example) {
        return worksMapper.workshuifu(example);
    }

    @Override
    public List<Works> selectByExample(WorksExample example) {
        return worksMapper.selectByExample(example);
    }
}
