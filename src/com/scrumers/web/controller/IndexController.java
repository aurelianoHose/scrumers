package com.scrumers.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.scrumers.service.UserService;

@Controller
public class IndexController {

    @Autowired
    UserService userSrv;

    @RequestMapping("/index")
    public String index() {
        return "redirect:/main.html";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/error")
    public String error(final Model model) {
        model.addAttribute("error", "Access denied");
        return "error";
    }
}
