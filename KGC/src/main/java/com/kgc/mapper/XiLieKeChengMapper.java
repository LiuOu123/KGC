package com.kgc.mapper;

import com.kgc.pojo.XiLieKeCheng;
import com.kgc.pojo.XiLieKeChengExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface XiLieKeChengMapper {
    int countByExample(XiLieKeChengExample example);

    int deleteByExample(XiLieKeChengExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(XiLieKeCheng record);

    int insertSelective(XiLieKeCheng record);

    List<XiLieKeCheng> selectByExample(XiLieKeChengExample example);

    XiLieKeCheng selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") XiLieKeCheng record, @Param("example") XiLieKeChengExample example);

    int updateByExample(@Param("record") XiLieKeCheng record, @Param("example") XiLieKeChengExample example);

    int updateByPrimaryKeySelective(XiLieKeCheng record);

    int updateByPrimaryKey(XiLieKeCheng record);
}