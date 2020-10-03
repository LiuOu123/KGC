package com.kgc.service.impl;

import com.kgc.mapper.LunTanMapper;
import com.kgc.mapper.TieZiHiuFuMapper;
import com.kgc.mapper.UserInfoMapper;
import com.kgc.pojo.*;
import com.kgc.service.LoLunTanService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("loLunTanService")
public class LoLunTanServiceImpl implements LoLunTanService {
    @Resource
    LunTanMapper lunTanMapper;
    @Resource
    UserInfoMapper userInfoMapper;
    @Resource
    TieZiHiuFuMapper tieZiHiuFuMapper;
    @Resource
    LoLunTanService loLunTanService;


    @Override
    public List<LunTan> selectAll() {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andTypeEqualTo(1);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }

    @Override
    public List<LunTan> selectWeiJie(int jie) {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andWanjieEqualTo(jie);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }

    @Override
    public List<LunTan> selectJingHua() {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andJingtieEqualTo(1);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }

    @Override
    public List<LunTan> selectZuiXin() {
        LunTanExample example=new LunTanExample();
        example.setOrderByClause("time desc");
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }
    @Override
    public List<LunTan> selectReYi() {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andTypeEqualTo(1);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }

    @Override
    public List<LunTanHuiTie> selectHuiTie() {
        List<TieZiHiuFu> tieZiHiuFus = loLunTanService.selectAllTZHF();//查出所有的回帖
        List<Integer> id=new ArrayList();
        //循环将帖子回复表中 回复过的id取出来 重复的不添加
        for(int i=0;i<tieZiHiuFus.size();i++){
            id.add(tieZiHiuFus.get(i).getUserid());
        }
        /*返回用户回帖的次数和该用户在用户信息表中的数据*/
        List<LunTanHuiTie> lunTanHuiTies=new ArrayList<>();
        for(int i=0;i<id.size();i++){
            TieZiHiuFuExample example=new TieZiHiuFuExample();
            TieZiHiuFuExample.Criteria criteria = example.createCriteria();
            criteria.andUseridEqualTo(id.get(i));
            List<TieZiHiuFu> tieZiHiuFus1 = tieZiHiuFuMapper.selectByExample(example);
            List<UserInfo> userInfos = loLunTanService.selectByUserId(id.get(i));
            UserInfo userInfo=userInfos.get(userInfos.size()-1);
            LunTanHuiTie lunTanHuiTie=new LunTanHuiTie(id.get(i),tieZiHiuFus1.size(),userInfo);
            lunTanHuiTies.add(lunTanHuiTie);
        }
        /*for (LunTanHuiTie lunTanHuiTY : lunTanHuiTies) {
            System.out.println("1"+lunTanHuiTY.toString());
        }*/
        return lunTanHuiTies;
    }

    @Override
    public List<UserInfo> selectByUserId(int id) {
        UserInfoExample example=new UserInfoExample();
        UserInfoExample.Criteria criteria = example.createCriteria();
        criteria.andAccidEqualTo(id);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        return userInfos;
    }

    @Override
    public List<TieZiHiuFu> selectAllTZHF() {
        List<TieZiHiuFu> tieZiHiuFus = tieZiHiuFuMapper.selectByExample(null);
        return tieZiHiuFus;
    }

    @Override
    public List<LunTan> selectZhiDing() {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andTypeEqualTo(3);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        for(int i=0;i<lunTans.size();i++){
            /*将对应的userinfo表的信息填入luntan信息中*/
            UserInfoExample userInfoExample=new UserInfoExample();
            //userInfoExample.setOrderByClause("id desc");
            UserInfoExample.Criteria uicriteria = userInfoExample.createCriteria();
            uicriteria.andAccidEqualTo(lunTans.get(i).getUserid());
            List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoExample);
            lunTans.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return lunTans;
    }

    @Override
    public LunTan selectLunTanByTiTle(String title) {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andTitleEqualTo(title);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        return lunTans.get(0);
    }

    @Override
    public List<TieZiHiuFu> selectHuiFU(int tieziid) {
        TieZiHiuFuExample example=new TieZiHiuFuExample();
        TieZiHiuFuExample.Criteria criteria = example.createCriteria();
        criteria.andTiezitypeEqualTo(1);
        criteria.andLuntanidEqualTo(tieziid);
        List<TieZiHiuFu> tieZiHiuFus = tieZiHiuFuMapper.selectByExample(example);
        for(int i=0;i<tieZiHiuFus.size();i++){
            List<UserInfo> userInfos = selectByUserId(tieZiHiuFus.get(i).getUserid());
            tieZiHiuFus.get(i).setUserInfo(userInfos.get(userInfos.size()-1));
        }
        return tieZiHiuFus;
    }
}
