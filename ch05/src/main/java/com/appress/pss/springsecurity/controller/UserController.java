package com.appress.pss.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/movies")
    public String movies() {
        return "movies";
    }

    @ResponseBody
    @GetMapping("/showmovie")
    public String showMovie() {
        return "movie x";
    }

    @GetMapping("login")
    public String loginPage() {
        return "login";
    }
}
