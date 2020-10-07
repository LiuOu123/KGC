package com.kgc.service.impl;

import com.kgc.mapper.PictureMapper;
import com.kgc.mapper.PleiMapper;
import com.kgc.mapper.UserInfoMapper;
import com.kgc.mapper.UserMapper;
import com.kgc.pojo.*;
import com.kgc.service.loQianTaiService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("loQianTaiService")
public class loQianTaiServiceImpl implements loQianTaiService {
    @Resource
    UserMapper userMapper;
    @Resource
    UserInfoMapper userInfoMapper;
    @Resource
    PictureMapper pictureMapper;
    @Resource
    PleiMapper pleiMapper;
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

    @Override
    public List<Picture> selectAll() {
        List<Picture> pictures = pictureMapper.selectByExample(null);
        return pictures;
    }

    @Override
    public List<Picture> selectBy(int lei) {
        PictureExample example=new PictureExample();
        PictureExample.Criteria criteria = example.createCriteria();
        criteria.andLeiEqualTo(lei);
        List<Picture> pictures = pictureMapper.selectByExample(example);
        return pictures;
    }

    @Override
    public List<Plei> selectAllPLei() {
        List<Plei> pleis = pleiMapper.selectByExample(null);
        return pleis;
    }


}
