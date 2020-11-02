package com.kgc.service;

import com.kgc.pojo.UserBuy;
import com.kgc.pojo.XiLieKeCheng;

import java.util.List;

public interface ZhouXiLieService {

    XiLieKeCheng selectAll(String name);

    List<XiLieKeCheng> selectXiangAndJie(String name);

    List<XiLieKeCheng> selectXiLie();

    void update(XiLieKeCheng xiLieKeCheng);
}
