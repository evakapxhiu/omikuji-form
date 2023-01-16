package com.betaplan.eva.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class FormController {
    @RequestMapping("/")
    public String omikuji (){
        return "redirect:/omikuji";
    }
@RequestMapping("/omikuji")
    public String form(){
    return "index";
}

@RequestMapping("/omikuji/show")
    public String show(HttpSession session ,Model model){
        String result=(String) session.getAttribute("resultOmikuji");
        model.addAttribute("result",result);
        return "message";
}
@PostMapping("/post")
    public String data(
            @RequestParam("number")int number,
            @RequestParam("city") String city,
            @RequestParam("name")String name ,
            @RequestParam("hobby")String hobby,
            @RequestParam("thing") String thing,
            @RequestParam("text")String text,
            HttpSession session
){
        String resultOmikuji=String.format("in %s years,you will live in %s with %s as your roomate selling %s for a living .The next time you will see a %s you will have good luck.%s ",
                number,city,name,hobby,thing,text);
        session.setAttribute("resultOmikuji",resultOmikuji);
        return "redirect:/omikuji/show";
}
}
