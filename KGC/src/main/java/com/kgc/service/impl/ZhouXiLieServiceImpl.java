package com.kgc.service.impl;

import com.kgc.mapper.UserBuyMapper;
import com.kgc.mapper.XiLieKeChengMapper;
import com.kgc.pojo.UserBuy;
import com.kgc.pojo.UserBuyExample;
import com.kgc.pojo.XiLieKeCheng;
import com.kgc.pojo.XiLieKeChengExample;
import com.kgc.service.ZhouXiLieService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("zhouXiLieService")
public class ZhouXiLieServiceImpl implements ZhouXiLieService{


    @Resource
    XiLieKeChengMapper xiLieKeChengMapper;

    @Resource
    UserBuyMapper userBuyMapper;

    @Override
    public XiLieKeCheng selectAll(String name) {
        XiLieKeCheng username=null;
        XiLieKeChengExample example=new XiLieKeChengExample();
        XiLieKeChengExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(name);
        List<XiLieKeCheng> xiLieKeChengs = xiLieKeChengMapper.selectByExample(example);
        if(xiLieKeChengs!=null){
            username=xiLieKeChengs.get(0);
        }
        return username;
    }

    @Override
    public List<XiLieKeCheng> selectXiangAndJie(String name) {
        XiLieKeChengExample example=new XiLieKeChengExample();
        XiLieKeChengExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(name);
        List<XiLieKeCheng> xiLieKeChengs = xiLieKeChengMapper.selectByExample(example);
        return xiLieKeChengs;
    }

    @Override
    public List<XiLieKeCheng> selectXiLie() {
        return xiLieKeChengMapper.selectByExample(null);
    }

    @Override
    public int count(String name, String biao) {
        UserBuyExample example=new UserBuyExample();
        UserBuyExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(name);
        criteria.andBiaoEqualTo(biao);
        int i = userBuyMapper.countByExample(example);
        return i;
    }

    @Override
    public void insert(UserBuy userBuy) {
        userBuyMapper.insertSelective(userBuy);
    }

    @Override
    public void update(UserBuy userBuy) {
        userBuyMapper.updateByPrimaryKeySelective(userBuy);
    }

    @Override
    public UserBuy selectUserBuy(String name, String biao) {
        UserBuy username=null;
        UserBuyExample example=new UserBuyExample();
        UserBuyExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(name);
        criteria.andBiaoEqualTo(biao);
        List<UserBuy> userBuys = userBuyMapper.selectByExample(example);
        if(userBuys!=null && userBuys.size()!=0){
            username=userBuys.get(0);
        }
        return username;
    }

}
