package com.kgc.service;

import com.kgc.pojo.Releasee;
import com.kgc.pojo.ReleaseeExample;

import java.util.List;

public interface ReleaseeSerivce {
    List<Releasee> studentworks(ReleaseeExample example);
    Releasee selectByPrimaryKey(Integer rid);
    int deleteByPrimaryKey(Integer rid);
    int insertSelective(Releasee record);
    int updateByPrimaryKeySelective(Releasee record);
}
