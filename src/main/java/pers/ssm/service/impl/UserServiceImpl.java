package pers.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pers.ssm.dao.UserMapper;
import pers.ssm.model.User;
import pers.ssm.service.UserService;

/**
 * Created by wsj on 2016/7/11.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUserById(int userId) {
        return userMapper.selectByPrimaryKey(userId);
    }
}
