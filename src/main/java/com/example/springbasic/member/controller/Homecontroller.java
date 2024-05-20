package com.example.springbasic.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Homecontroller {
    @GetMapping("/login")
    public String index() {
        return "login";
    }
}
