package com.kgc.service;

import com.kgc.pojo.luntanhistory;
import com.kgc.pojo.luntanhistoryExample;

import java.util.List;

public interface ZhangluntanhistoryService {
    //添加论坛历史记录
    int insertSelective(luntanhistory record);
      //查询历史记录
    List<luntanhistory> lthistory(luntanhistoryExample example);
    //删除
    int deleteByPrimaryKey(Integer hoistroyId);
}
