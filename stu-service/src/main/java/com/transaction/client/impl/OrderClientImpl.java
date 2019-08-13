package com.transaction.client.impl;

import com.transaction.client.OrderClient;
import org.springframework.stereotype.Component;

@Component
public class OrderClientImpl implements OrderClient {
    @Override
    public void create(Integer age) {
        new Exception("order服务出错了");
    }
}
