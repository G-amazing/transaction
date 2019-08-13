package com.transaction.client;

import com.transaction.client.impl.StuClientImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "stu-service",fallback = StuClientImpl.class)
public interface StuClient {
    @PostMapping("/stu/create")
    void create(@RequestParam("age") Integer age);
}
