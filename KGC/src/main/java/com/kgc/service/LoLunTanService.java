package com.kgc.service;

import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.kgc.pojo.*;

import java.util.List;

public interface LoLunTanService {
    List<LunTan> selectAll(Integer weijie,Integer jingtie);//查询全部帖子 但是只是查看type=1的 因为=2是已经删除
    List<LunTan> selectWeiJie(int jie);//查找完结的
    List<LunTan> selectJingHua(int jingtie);//查找精贴
    List<LunTan> selectZuiXin();//按照时间倒叙排序
    List<LunTan> selectReYi();//按照热议排序
    List<LunTanHuiTie> selectHuiTie();//查找4位回帖数量最多的
    List<UserInfo> selectByUserId(int id);//根据用户id查找信息
    List<TieZiHiuFu> selectAllTZHF();//查找帖子回复里的所有帖子
    List<LunTan> selectZhiDing();//查找置顶的帖子
    LunTan selectLunTanByTiTle(String title);//根据标题查帖子
    List<TieZiHiuFu> selectHuiFU(int tieziid);//根据帖子的id查找该帖子的回复 并且将回复的用户信息一起查出来
    int insertTieZiHuiFu(TieZiHiuFu tieZiHiuFu);//添加帖子的回复
    LunTan selectByLunTanId(int id);//根据论坛id查找论坛信息
    UserInfo selectByNiCheng(String username);//根据昵称查找用户信息
    List<LunTan> selectLunTanByUserId(int id);//根据用户id查找发过的帖子
    List<TieZiHiuFu> selectTZHFByUserId(int id);//根据用户id查找给帖子的回复
    List<ShouCang> selectSCByUserId(int id);//根据用户id查找收藏的帖子并且显示收藏帖子的信息
    int updateLunTanType(LunTan lunTan);//根据用户id将这个论坛帖子修改成用户不可见
    int updateShouCangType(ShouCang shouCang);//根据收藏id将该条信息类型修改为2 让用户不可见
    int updateUserInfoType(UserInfo userInfo);//将用该用户信息type修改成2 让用户不可见
    int insertUserInfo(UserInfo userInfo);//添加用户信息
    UserInfo selectUserInfoLimitNew1(int userid);//根据用户id查找userinfo表中最新的数据
    UserInfo selectByUid(int uid);//根据用户表uid查找信息
    User selectByid(int id);//根据用户id查找注册信息
    int updatepassword(User user);//根据用户id修改该用户密码;
    List<WoDeXiaoXi> selectByShouUserId(int userid);//查询我的消息根据用户id
    int updateWDXXLei(int id);//根据id将我的消息表中该数据类型修改成2
    List<WoDeXiaoXi> selectByShouFa(int userid,int faid);//查询发送或者收件人为该id的数据
    int addWDXX(WoDeXiaoXi woDeXiaoXi);//添加消息
    WoDeXiaoXi selectByXid(int xid);//根据id查看我的消息表中的数据
    int updateWDXXLei3(int id);//根据id将我的消息表中该数据类型修改成3
    List<UserInfo> selectHistoryTouXiang(int userid);//查询该用户历史头像
}
