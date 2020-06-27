package com.zy.controller;

import com.zy.Entry.User;
import com.zy.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 在Controller中加入UserController。UserController主要调用UserService、接收客户端的网络请求即可。其中比较重要的部分解释：
 * @Controller: 标明这是一个Controller层组件
 * @ResponseBody：不会返回网页，返回的是java对象对应的JSON串。
 * @Autowired：自动注入
 * @RequestMapping：标注客户端向服务器发起请求时需要的url，这里以register为例，当客户端需要服务端处理注册事件的时候，需要设置访问的url为http://IP地址:端口号/regist。
 * @RequestParam：客户端请求时需要的参数名。
 * @PostMapping = @RequrstMapping + method = RequestMethod.POST
 * 可以在整个类上添加@RequestMapping注解，假如在UserController上面添加了一个@RequestMapping("/test")，那么注册时需要访问的地址就是http://ip地址：端口号/test/register。
 * @Controller + @ResponseBody = @RestController。
 * 运行没有错误，服务器就准备完成了。
 * */
@Controller
@ResponseBody
@RequestMapping("/baseApi")
public class UserController {
    @Autowired
    public UserService userService;
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public boolean register(@RequestParam("userId") String userId,@RequestParam("password") String password){
        return userService.register(userId,password);
    }

    @RequestMapping(value = "/login")
    public User loginCheck(@RequestParam("userId")String userId,@RequestParam("password") String password){
        return userService.loginCheck(userId,password);
    }

}
