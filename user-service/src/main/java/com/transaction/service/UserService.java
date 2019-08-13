package com.transaction.service;

import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import com.transaction.client.OrderClient;
import com.transaction.client.StuClient;
import com.transaction.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private OrderClient orderClient;
    @Autowired
    private StuClient stuClient;

    @Transactional
    public void create(Integer age) {
        userMapper.create(age);
    }

    @LcnTransaction
    @Transactional
    public void save(Integer age) {
        // 本地
        userMapper.create(age);

        // 调用 stu 服务
        stuClient.create(age);

        // 调用 order 服务
        //orderClient.create(age);
    }
}
