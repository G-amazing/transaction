package com.transaction.service;

import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import com.transaction.client.OrderClient;
import com.transaction.mapper.StuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StuService {
    @Autowired
    private StuMapper stuMapper;
    @Autowired
    private OrderClient orderClient;

    @LcnTransaction
    @Transactional
    public void create(Integer age) {
        // 本地服务
        stuMapper.create(age);

        // 调用order服务
        orderClient.create(age);
    }
}
