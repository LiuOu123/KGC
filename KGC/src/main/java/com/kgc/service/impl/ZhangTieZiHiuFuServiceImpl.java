package com.kgc.service.impl;

import com.kgc.mapper.TieZiHiuFuMapper;
import com.kgc.pojo.TieZiHiuFu;
import com.kgc.pojo.TieZiHiuFuExample;
import com.kgc.service.ZhangTieZiHiuFuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ZhangTieZiHiuFuService")
public class ZhangTieZiHiuFuServiceImpl  implements ZhangTieZiHiuFuService {
    @Resource
    TieZiHiuFuMapper tieZiHiuFuMapper;
    @Override
    public List<TieZiHiuFu> userhuifu(TieZiHiuFuExample example) {
        return tieZiHiuFuMapper.userhuifu(example);
    }
}
