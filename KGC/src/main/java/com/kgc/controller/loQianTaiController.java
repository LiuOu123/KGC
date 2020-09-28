package com.kgc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loQianTaiController {
    @RequestMapping("/")
    public String kai() {
        return "denglu";
    }
}
