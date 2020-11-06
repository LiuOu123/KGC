package com.kgc.mapper;

import com.kgc.pojo.userimg;
import com.kgc.pojo.userimgExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface userimgMapper {
    int countByExample(userimgExample example);

    int deleteByExample(userimgExample example);

    int deleteByPrimaryKey(Integer userinfoImgid);

    int insert(userimg record);

    int insertSelective(userimg record);

    List<userimg> selectByExample(userimgExample example);

    userimg selectByPrimaryKey(Integer userinfoImgid);

    int updateByExampleSelective(@Param("record") userimg record, @Param("example") userimgExample example);

    int updateByExample(@Param("record") userimg record, @Param("example") userimgExample example);

    int updateByPrimaryKeySelective(userimg record);

    int updateByPrimaryKey(userimg record);
}