package com.kgc.service.impl;

import com.kgc.mapper.ReplyMapper;
import com.kgc.pojo.Reply;
import com.kgc.pojo.ReplyExample;
import com.kgc.service.ReplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("ReplyService")
public class ReplyServiceImpl implements ReplyService {
    @Resource
    ReplyMapper replyMapper;

    @Override
    public int insertSelective(Reply record) {
        return replyMapper.insertSelective(record);
    }

    @Override
    public int deleteByExample(ReplyExample example) {
        return replyMapper.deleteByExample(example);
    }


}
