package com.kgc.mapper;

import com.kgc.pojo.UserBuy;
import com.kgc.pojo.UserBuyExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserBuyMapper {
    int countByExample(UserBuyExample example);

    int deleteByExample(UserBuyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserBuy record);

    int insertSelective(UserBuy record);

    List<UserBuy> selectByExample(UserBuyExample example);

    UserBuy selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserBuy record, @Param("example") UserBuyExample example);

    int updateByExample(@Param("record") UserBuy record, @Param("example") UserBuyExample example);

    int updateByPrimaryKeySelective(UserBuy record);

    int updateByPrimaryKey(UserBuy record);
}