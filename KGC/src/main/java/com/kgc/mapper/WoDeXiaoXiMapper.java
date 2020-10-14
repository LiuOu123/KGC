package com.kgc.mapper;

import com.kgc.pojo.WoDeXiaoXi;
import com.kgc.pojo.WoDeXiaoXiExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WoDeXiaoXiMapper {
    int countByExample(WoDeXiaoXiExample example);

    int deleteByExample(WoDeXiaoXiExample example);

    int deleteByPrimaryKey(Integer xid);

    int insert(WoDeXiaoXi record);

    int insertSelective(WoDeXiaoXi record);

    List<WoDeXiaoXi> selectByExample(WoDeXiaoXiExample example);

    WoDeXiaoXi selectByPrimaryKey(Integer xid);

    int updateByExampleSelective(@Param("record") WoDeXiaoXi record, @Param("example") WoDeXiaoXiExample example);

    int updateByExample(@Param("record") WoDeXiaoXi record, @Param("example") WoDeXiaoXiExample example);

    int updateByPrimaryKeySelective(WoDeXiaoXi record);

    int updateByPrimaryKey(WoDeXiaoXi record);
}