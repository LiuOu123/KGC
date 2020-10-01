package com.kgc.mapper;

import com.kgc.pojo.TieZiHiuFu;
import com.kgc.pojo.TieZiHiuFuExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TieZiHiuFuMapper {
    int countByExample(TieZiHiuFuExample example);

    int deleteByExample(TieZiHiuFuExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TieZiHiuFu record);

    int insertSelective(TieZiHiuFu record);

    List<TieZiHiuFu> selectByExample(TieZiHiuFuExample example);

    TieZiHiuFu selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TieZiHiuFu record, @Param("example") TieZiHiuFuExample example);

    int updateByExample(@Param("record") TieZiHiuFu record, @Param("example") TieZiHiuFuExample example);

    int updateByPrimaryKeySelective(TieZiHiuFu record);

    int updateByPrimaryKey(TieZiHiuFu record);
}