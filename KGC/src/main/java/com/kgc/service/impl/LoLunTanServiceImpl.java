package com.kgc.service.impl;

import com.kgc.mapper.*;
import com.kgc.pojo.*;
import com.kgc.service.LoLunTanService;
import com.kgc.service.loQianTaiService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("loLunTanService")
public class LoLunTanServiceImpl implements LoLunTanService {
    @Resource
    WoDeXiaoXiMapper woDeXiaoXiMapper;
    @Resource
    LunTanMapper lunTanMapper;
    @Resource
    UserInfoMapper userInfoMapper;
    @Resource
    TieZiHiuFuMapper tieZiHiuFuMapper;
    @Resource
    LoLunTanService loLunTanService;
    @Resource
    ShouCangMapper shouCangMapper;
    @Resource
    UserMapper userMapper;
@Resource
com.kgc.service.loQianTaiService loQianTaiService;

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
            uicriteria.andUtypeEqualTo(1);
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
            uicriteria.andUtypeEqualTo(1);
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
            uicriteria.andUtypeEqualTo(1);
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
            uicriteria.andUtypeEqualTo(1);
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
            uicriteria.andUtypeEqualTo(1);
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
            UserInfo userInfo=userInfos.get(0);
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
        criteria.andUtypeEqualTo(1);
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
            uicriteria.andUtypeEqualTo(1);
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

    @Override
    public int insertTieZiHuiFu(TieZiHiuFu tieZiHiuFu) {
        int i = tieZiHiuFuMapper.insertSelective(tieZiHiuFu);
        return i;
    }

    @Override
    public LunTan selectByLunTanId(int id) {
        LunTan lunTan = lunTanMapper.selectByPrimaryKey(id);
        return lunTan;
    }

    @Override
    public UserInfo selectByNiCheng(String username) {
        UserInfoExample example=new UserInfoExample();
        UserInfoExample.Criteria criteria = example.createCriteria();
        criteria.andNicknameEqualTo(username);
        criteria.andUtypeEqualTo(1);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        return userInfos.get(userInfos.size()-1);
    }

    @Override
    public List<LunTan> selectLunTanByUserId(int id) {
        LunTanExample example=new LunTanExample();
        LunTanExample.Criteria criteria = example.createCriteria();
        criteria.andTypeNotEqualTo(2);
        criteria.andUseridEqualTo(id);
        List<LunTan> lunTans = lunTanMapper.selectByExample(example);
        return lunTans;
    }

    @Override
    public List<TieZiHiuFu> selectTZHFByUserId(int id) {
        TieZiHiuFuExample example=new TieZiHiuFuExample();
        TieZiHiuFuExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(id);
        List<TieZiHiuFu> tieZiHiuFus = tieZiHiuFuMapper.selectByExample(example);
        return tieZiHiuFus;
    }

    @Override
    public List<ShouCang> selectSCByUserId(int id) {
        ShouCangExample example=new ShouCangExample();
        ShouCangExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(id);
        criteria.andSctypeNotEqualTo(2);
        List<ShouCang> shouCangs = shouCangMapper.selectByExample(example);
        for(int i=0;i<shouCangs.size();i++){
            LunTan lunTan = lunTanMapper.selectByPrimaryKey(shouCangs.get(i).getTieziid());
            shouCangs.get(i).setLunTan(lunTan);
        }
        return shouCangs;
    }

    @Override
    public int updateLunTanType(LunTan lunTan) {
        int i = lunTanMapper.updateByPrimaryKeySelective(lunTan);
        return i;
    }

    @Override
    public int updateShouCangType(ShouCang shouCang) {
        int i = shouCangMapper.updateByPrimaryKeySelective(shouCang);
        return i;
    }

    @Override
    public int updateUserInfoType(UserInfo userInfo) {
        int i = userInfoMapper.updateByPrimaryKeySelective(userInfo);
        return i;
    }

    @Override
    public int insertUserInfo(UserInfo userInfo) {
        int i = userInfoMapper.insertSelective(userInfo);
        return i;
    }

    @Override
    public UserInfo selectUserInfoLimitNew1(int userid) {
        UserInfoExample example=new UserInfoExample();
        UserInfoExample.Criteria criteria = example.createCriteria();
        criteria.andAccidEqualTo(userid);
        criteria.andUtypeEqualTo(1);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        UserInfo userinfo=userInfos.get(userInfos.size()-1);
        return userinfo;
    }

    @Override
    public UserInfo selectByUid(int uid) {
        return userInfoMapper.selectByPrimaryKey(uid);
    }

    @Override
    public User selectByid(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updatepassword(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public List<WoDeXiaoXi> selectByShouUserId(int userid) {
        WoDeXiaoXiExample example=new WoDeXiaoXiExample();
        WoDeXiaoXiExample.Criteria criteria = example.createCriteria();
        criteria.andShouuseridEqualTo(userid);
        criteria.andXleiNotEqualTo(2);
/*        criteria.andXidEqualTo(1);
        criteria.andXidEqualTo(3);*/
        List<WoDeXiaoXi> woDeXiaoXis = woDeXiaoXiMapper.selectByExample(example);
        for (int i = 0; i <woDeXiaoXis.size() ; i++) {
            UserInfo userInfo = loQianTaiService.selectByAccidAndUtype(woDeXiaoXis.get(i).getSenduserid());
            woDeXiaoXis.get(i).setUserInfo(userInfo);
        }
        return woDeXiaoXis;
    }

    @Override
    public int updateWDXXLei(int id) {
        WoDeXiaoXi woDeXiaoXi=new WoDeXiaoXi(id,2);
        return woDeXiaoXiMapper.updateByPrimaryKeySelective(woDeXiaoXi);
    }

    @Override
    public List<WoDeXiaoXi> selectByShouFa(int userid,int faid) {
        WoDeXiaoXiExample example=new WoDeXiaoXiExample();
        WoDeXiaoXiExample.Criteria criteria = example.createCriteria();
        List<Integer> one=new ArrayList<>();
        one.add(userid);
        one.add(faid);
        criteria.andShouuseridIn(one);
        criteria.andSenduseridIn(one);
        example.setOrderByClause("time asc");
        List<WoDeXiaoXi> woDeXiaoXis = woDeXiaoXiMapper.selectByExample(example);
        for (int i = 0; i <woDeXiaoXis.size() ; i++) {
            UserInfo userInfo = loQianTaiService.selectByAccidAndUtype(woDeXiaoXis.get(i).getSenduserid());
            woDeXiaoXis.get(i).setUserInfo(userInfo);
        }
        return woDeXiaoXis;
    }

    @Override
    public int addWDXX(WoDeXiaoXi woDeXiaoXi) {
        return woDeXiaoXiMapper.insertSelective(woDeXiaoXi);
    }

    @Override
    public WoDeXiaoXi selectByXid(int xid) {
        return woDeXiaoXiMapper.selectByPrimaryKey(xid);
    }

    @Override
    public int updateWDXXLei3(int id) {
        WoDeXiaoXi woDeXiaoXi=new WoDeXiaoXi(id,3);
        return woDeXiaoXiMapper.updateByPrimaryKeySelective(woDeXiaoXi);
    }
}
