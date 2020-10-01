package com.kgc.mapper;

import com.kgc.pojo.ShouCang;
import com.kgc.pojo.ShouCangExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShouCangMapper {
    int countByExample(ShouCangExample example);

    int deleteByExample(ShouCangExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ShouCang record);

    int insertSelective(ShouCang record);

    List<ShouCang> selectByExample(ShouCangExample example);

    ShouCang selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ShouCang record, @Param("example") ShouCangExample example);

    int updateByExample(@Param("record") ShouCang record, @Param("example") ShouCangExample example);

    int updateByPrimaryKeySelective(ShouCang record);

    int updateByPrimaryKey(ShouCang record);
}