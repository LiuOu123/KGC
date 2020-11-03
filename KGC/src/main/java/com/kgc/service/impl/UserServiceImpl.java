package com.kgc.service.impl;

import com.kgc.mapper.UserMapper;
import com.kgc.pojo.User;
import com.kgc.pojo.UserExample;
import com.kgc.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper userMapper;
    //登录
    @Override
    public User login(String username) {
        User user=null;
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserEqualTo(username);
        List<User> users = userMapper.selectByExample(example);
        if (users!=null&&users.size()>0){
            user=users.get(0);
        }
        return user;
    }
}
