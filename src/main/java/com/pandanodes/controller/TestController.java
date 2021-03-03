package com.pandanodes.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author panda_nodes
 */
@RestController
@RequestMapping("/api")
public class TestController {

    @GetMapping("/test")
    public String sayHello(){
        return "hello world";
    }
}
