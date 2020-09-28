package com.kgc.service.impl;



import com.kgc.mapper.UserInfoMapper;
import com.kgc.mapper.UserMapper;
import com.kgc.pojo.User;
import com.kgc.pojo.UserExample;
import com.kgc.pojo.UserInfo;
import com.kgc.pojo.UserInfoExample;
import com.kgc.service.loQianTaiService;

import javax.annotation.Resource;
import java.util.List;

public class loQianTaiServiceImpl implements loQianTaiService {
    @Resource
    UserMapper userMapper;
    @Resource
    UserInfoMapper userInfoMapper;
    @Override
    public List<User> login(String username, String password) {
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserEqualTo(username);
        criteria.andPwdEqualTo(password);
        List<User> users = userMapper.selectByExample(example);
        return users;
    }

    @Override
    public List<UserInfo> selectByAccid(int id) {
        UserInfoExample example=new UserInfoExample();
        UserInfoExample.Criteria criteria = example.createCriteria();
        criteria.andAccidEqualTo(id);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        return userInfos;
    }


}
