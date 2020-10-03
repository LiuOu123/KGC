package com.kgc.service;

import com.kgc.pojo.LunTan;
import com.kgc.pojo.LunTanHuiTie;
import com.kgc.pojo.TieZiHiuFu;
import com.kgc.pojo.UserInfo;

import java.util.List;

public interface LoLunTanService {
    List<LunTan> selectAll();//查询全部帖子 但是只是查看type=1的 因为=2是已经删除
    List<LunTan> selectWeiJie(int jie);//查找完结的
    List<LunTan> selectJingHua();//查找精贴
    List<LunTan> selectZuiXin();//按照时间倒叙排序
    List<LunTan> selectReYi();//按照热议排序
    List<LunTanHuiTie> selectHuiTie();//查找4位回帖数量最多的
    List<UserInfo> selectByUserId(int id);//根据用户id查找信息
    List<TieZiHiuFu> selectAllTZHF();//查找帖子回复里的所有帖子
    List<LunTan> selectZhiDing();//查找置顶的帖子
    LunTan selectLunTanByTiTle(String title);//根据标题查帖子
    List<TieZiHiuFu> selectHuiFU(int tieziid);//根据帖子的id查找该帖子的回复 并且将回复的用户信息一起查出来
}
