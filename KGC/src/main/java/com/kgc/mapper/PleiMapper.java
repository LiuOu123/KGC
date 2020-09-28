package com.kgc.mapper;

import com.kgc.pojo.Plei;
import com.kgc.pojo.PleiExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PleiMapper {
    int countByExample(PleiExample example);

    int deleteByExample(PleiExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Plei record);

    int insertSelective(Plei record);

    List<Plei> selectByExample(PleiExample example);

    Plei selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Plei record, @Param("example") PleiExample example);

    int updateByExample(@Param("record") Plei record, @Param("example") PleiExample example);

    int updateByPrimaryKeySelective(Plei record);

    int updateByPrimaryKey(Plei record);
}