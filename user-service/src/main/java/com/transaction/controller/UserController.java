package com.transaction.controller;

import com.transaction.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/user/create")
    public void create(@RequestParam Integer age) {
        userService.create(age);
    }

    @PostMapping("/save")
    public void save(@RequestParam Integer age) {
        userService.save(age);
    }
}
