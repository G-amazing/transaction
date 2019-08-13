package com.transaction.client.impl;

import com.transaction.client.StuClient;
import org.springframework.stereotype.Component;

@Component
public class StuClientImpl implements StuClient {
    @Override
    public void create(Integer age) {
        new Exception("stu服务出错了");
    }
}
