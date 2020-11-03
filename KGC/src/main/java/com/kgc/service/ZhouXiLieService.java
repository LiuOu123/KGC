package com.kgc.service;

import com.kgc.pojo.UserBuy;
import com.kgc.pojo.XiLieKeCheng;

import java.util.List;

public interface ZhouXiLieService {

    XiLieKeCheng selectAll(String name);

    List<XiLieKeCheng> selectXiangAndJie(String name);

    List<XiLieKeCheng> selectXiLie();

    int count(String name,String biao);

    void insert(UserBuy userBuy);

    void update(UserBuy userBuy);

    UserBuy selectUserBuy(String name,String biao);

}
