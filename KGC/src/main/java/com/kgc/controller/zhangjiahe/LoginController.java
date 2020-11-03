package com.kgc.controller.zhangjiahe;

import com.kgc.pojo.User;
import com.kgc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
@Resource
    UserService userService;
    @RequestMapping("/tologin")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("doLogin")
    public  String doLogin(Model model, String username, String password, Integer shenfen, HttpSession session){

         System.out.println("登录用户名:"+username);
         System.out.println("登录密码:"+password);
         System.out.println("登录类别:"+shenfen);


        User    login =null;

        try {
            login = userService.login(username);
            session.setAttribute("login",login);
            System.out.println(shenfen.equals(login.getLei()));
            System.out.println(password.equals(login.getPwd()));
            System.out.println(username.equals(login.getUser()));
if(shenfen.equals(1)){
            if (username.equals(login.getUser())) {
                if (password.equals(login.getPwd())) {
                    if (shenfen.equals(login.getLei())) {
                        session.setAttribute("username", login.getUser());
                        session.setAttribute("userid", login.getId());
                        session.setAttribute("shenfen", login.getLei());
                        return "main";
                    }
                }
                }
            }
            else  if(shenfen.equals(2)){
                if (username.equals(login.getUser())) {
                    if (password.equals(login.getPwd())) {
                        if (shenfen.equals(login.getLei())) {
                            session.setAttribute("username", login.getUser());
                            session.setAttribute("shenfen", login.getLei());
                            return "main";
                        }
                    }
                }
            }
           else if(shenfen.equals(3)){
                if (username.equals(login.getUser())) {
                    if (password.equals(login.getPwd())) {
                        if (shenfen.equals(login.getLei())) {
                            session.setAttribute("username", login.getUser());
                            session.setAttribute("shenfen", login.getLei());
                            return "main";
                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg","用户名或密码错误!");
            return "login";
        }

return "";

    }
}
