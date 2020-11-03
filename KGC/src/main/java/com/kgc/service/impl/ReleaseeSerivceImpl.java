package com.kgc.service.impl;

import com.kgc.mapper.ReleaseeMapper;
import com.kgc.pojo.Releasee;
import com.kgc.pojo.ReleaseeExample;
import com.kgc.service.ReleaseeSerivce;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ReleaseeSerivce")
public class ReleaseeSerivceImpl implements ReleaseeSerivce {
    @Resource
    ReleaseeMapper releaseeMapper;
    @Override
    public List<Releasee> studentworks(ReleaseeExample example) {
        return releaseeMapper.studentworks(example);
    }

    @Override
    public Releasee selectByPrimaryKey(Integer rid) {
        return releaseeMapper.selectByPrimaryKey(rid);
    }

    @Override
    public int deleteByPrimaryKey(Integer rid) {
        return releaseeMapper.deleteByPrimaryKey(rid);
    }

    @Override
    public int insertSelective(Releasee record) {
        return releaseeMapper.insertSelective(record);
    }

    @Override
    public int updateByPrimaryKeySelective(Releasee record) {
        return releaseeMapper.updateByPrimaryKeySelective(record);
    }
}
