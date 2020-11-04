package com.kgc.service.impl;

import com.kgc.mapper.luntanhistoryMapper;
import com.kgc.pojo.luntanhistory;
import com.kgc.pojo.luntanhistoryExample;
import com.kgc.service.ZhangluntanhistoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ZhangluntanhistoryService")
public class ZhangluntanhistoryServiceImpl implements ZhangluntanhistoryService {
    @Resource
    luntanhistoryMapper  luntanhistoryMapper;

    @Override
    public int insertSelective(luntanhistory record) {
        return luntanhistoryMapper.insertSelective(record);
    }

    @Override
    public List<luntanhistory> lthistory(luntanhistoryExample example) {
        return luntanhistoryMapper.lthistory(example);
    }

    @Override
    public int deleteByPrimaryKey(Integer hoistroyId) {
        return luntanhistoryMapper.deleteByPrimaryKey(hoistroyId);
    }
}
