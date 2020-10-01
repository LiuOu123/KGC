package com.kgc.mapper;

import com.kgc.pojo.LunTan;
import com.kgc.pojo.LunTanExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LunTanMapper {
    int countByExample(LunTanExample example);

    int deleteByExample(LunTanExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(LunTan record);

    int insertSelective(LunTan record);

    List<LunTan> selectByExample(LunTanExample example);

    LunTan selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LunTan record, @Param("example") LunTanExample example);

    int updateByExample(@Param("record") LunTan record, @Param("example") LunTanExample example);

    int updateByPrimaryKeySelective(LunTan record);

    int updateByPrimaryKey(LunTan record);
}