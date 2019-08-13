package com.transaction.controller;

import com.transaction.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StuController {
    @Autowired
    private StuService stuService;

    @PostMapping("/stu/create")
    public void create(@RequestParam Integer age) {
        stuService.create(age);
    }
}
