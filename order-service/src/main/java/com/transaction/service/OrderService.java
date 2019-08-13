package com.transaction.service;

import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import com.transaction.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @LcnTransaction
    @Transactional
    public void create(Integer age) {
        if (age == 1) {
            int i = 1/0;
        }
        orderMapper.create(age);
    }

}
