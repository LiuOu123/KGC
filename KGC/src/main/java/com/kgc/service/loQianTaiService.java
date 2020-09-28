package com.kgc.service;

import com.kgc.pojo.User;
import com.kgc.pojo.UserInfo;

import java.util.List;

public interface loQianTaiService {
    List<User> login(String username,String password);
    List<UserInfo> selectByAccid(int id);
}
