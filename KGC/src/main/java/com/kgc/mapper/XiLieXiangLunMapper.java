package com.kgc.mapper;

import com.kgc.pojo.XiLieXiangLun;
import com.kgc.pojo.XiLieXiangLunExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface XiLieXiangLunMapper {
    int countByExample(XiLieXiangLunExample example);

    int deleteByExample(XiLieXiangLunExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(XiLieXiangLun record);

    int insertSelective(XiLieXiangLun record);

    List<XiLieXiangLun> selectByExample(XiLieXiangLunExample example);

    XiLieXiangLun selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") XiLieXiangLun record, @Param("example") XiLieXiangLunExample example);

    int updateByExample(@Param("record") XiLieXiangLun record, @Param("example") XiLieXiangLunExample example);

    int updateByPrimaryKeySelective(XiLieXiangLun record);

    int updateByPrimaryKey(XiLieXiangLun record);
}