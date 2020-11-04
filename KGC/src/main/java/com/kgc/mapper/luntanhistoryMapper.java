package com.kgc.mapper;

import com.kgc.pojo.luntanhistory;
import com.kgc.pojo.luntanhistoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface luntanhistoryMapper {
    int countByExample(luntanhistoryExample example);

    int deleteByExample(luntanhistoryExample example);

    int deleteByPrimaryKey(Integer hoistroyId);

    int insert(luntanhistory record);

    int insertSelective(luntanhistory record);

    List<luntanhistory> selectByExample(luntanhistoryExample example);
    List<luntanhistory> lthistory(luntanhistoryExample example);

    luntanhistory selectByPrimaryKey(Integer hoistroyId);

    int updateByExampleSelective(@Param("record") luntanhistory record, @Param("example") luntanhistoryExample example);

    int updateByExample(@Param("record") luntanhistory record, @Param("example") luntanhistoryExample example);

    int updateByPrimaryKeySelective(luntanhistory record);

    int updateByPrimaryKey(luntanhistory record);
}