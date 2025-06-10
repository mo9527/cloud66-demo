package com.john.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author wtwei
 * <p>create time: 2025/6/10 15:22</p>
 */

@RequestMapping("/user")
@RestController
public class UserInfoController {

    @GetMapping("/name")
    public ResponseEntity<String> getUserName() {
        return ResponseEntity.ok("Sun");
    }
}
