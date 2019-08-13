package com.transaction.client;

import com.transaction.client.impl.OrderClientImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "order-service",fallback = OrderClientImpl.class)
public interface OrderClient {
    @PostMapping("/order/create")
    void create(@RequestParam("age") Integer age);
}
