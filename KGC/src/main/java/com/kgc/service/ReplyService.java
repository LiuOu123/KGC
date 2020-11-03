package com.kgc.service;

import com.kgc.pojo.Reply;
import com.kgc.pojo.ReplyExample;

public interface ReplyService {
   // 学生对提交作业对作业的回复
   int insertSelective(Reply record);
   /*老师删除学生作业回复*/
   int deleteByExample(ReplyExample example);
}
