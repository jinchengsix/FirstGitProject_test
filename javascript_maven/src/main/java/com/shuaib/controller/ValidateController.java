package com.shuaib.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2018/5/18.
 */
@Controller
@RequestMapping(value = "web")
public class ValidateController {

    @RequestMapping(value = "/getInfo",method ={RequestMethod.POST,RequestMethod.GET})
    public String getInfo(ModelMap map, HttpServletRequest httpServletRequest){
        String uid = httpServletRequest.getParameter("uid");
        String psw1 = httpServletRequest.getParameter("psw1");
        String email = httpServletRequest.getParameter("email");
        String nickname = httpServletRequest.getParameter("nickname");

        map.addAttribute("username",uid);
        map.addAttribute("password",psw1);
        map.addAttribute("email",email);
        map.addAttribute("nickname",nickname);

        return "";
    }

}
