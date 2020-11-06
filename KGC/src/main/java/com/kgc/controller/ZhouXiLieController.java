package com.kgc.controller;

import com.kgc.pojo.JieAndXiang;
import com.kgc.pojo.UserBuy;
import com.kgc.pojo.XiLieKeCheng;
import com.kgc.pojo.XiLieXiangLun;
import com.kgc.service.ZhouXiLieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
public class ZhouXiLieController {

    @Resource
    ZhouXiLieService zhouXiLieService;

    @RequestMapping("/xiliekecheng")
    public String xiliekecheng(String name, Model model, String biao, HttpSession session){
        XiLieKeCheng xiLieKeChengs = zhouXiLieService.selectAll(name);
        List<XiLieKeCheng> selectXiLie = zhouXiLieService.selectXiLie();
        List<XiLieKeCheng> selectXiangAndJie = zhouXiLieService.selectXiangAndJie(name);
//        System.out.println(selectXiangAndJie.size());
//        System.out.println("哈哈哈");
        List<JieAndXiang> list=new ArrayList();
        if(selectXiangAndJie!=null && selectXiangAndJie.size()!=0){
            String xiang = selectXiangAndJie.get(0).getXiang();
            System.out.println(xiang);
            String[] split = xiang.split("~");

            String jie = selectXiangAndJie.get(0).getJie();
            System.out.println(jie);
            String[] split1 = jie.split("~");
            for (int i = 0; i < split1.length; i++) {
                JieAndXiang jieAndXiang=new JieAndXiang(split1[i],split[i]);
                list.add(jieAndXiang);
            }
        }
        int count = zhouXiLieService.count(biao,name);
        UserBuy userBuy = zhouXiLieService.selectUserBuy(biao, name);
        if(userBuy!=null) {
            model.addAttribute("userBuy", userBuy);
        }else{

        }
        List<XiLieXiangLun> xiLieXiangLuns = zhouXiLieService.selectXiLieXiangLun(name);
        model.addAttribute("xiliexianglun",xiLieXiangLuns);
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        model.addAttribute("selectXiLie",selectXiLie);
        model.addAttribute("xiLieKeChengs",xiLieKeChengs);
        return "xiliexiang";
    }

    @RequestMapping("/ZhiFuBao")
    public String zhifubao(Model model,String name,float price,String miaoshu,String biao){

        model.addAttribute("name",name);
        model.addAttribute("price",price);
        model.addAttribute("miaoshu",miaoshu);
        model.addAttribute("username",biao);
        return "index";
    }

    @RequestMapping("/FuKuan")
    public String fukuan(Model model,String WIDsubject,String username){
        System.out.println(username);
        UserBuy userBuy=new UserBuy();
        userBuy.setBiao(WIDsubject);
        userBuy.setUsername(username);
        zhouXiLieService.insert(userBuy);
        return "alipay.trade.page.pay";
    }

    @RequestMapping("/dingyue")
    public String dingyue(Model model,String name,String biao){
        UserBuy userBuy1 = zhouXiLieService.selectUserBuy(biao, name);
        UserBuy userBuy=new UserBuy();
        userBuy.setUsername(userBuy1.getUsername());
        userBuy.setBiao(userBuy1.getBiao());
        userBuy.setId(userBuy1.getId());
        userBuy.setLei(1);
        zhouXiLieService.update(userBuy);
        return "redirect:/xilie";
    }


    @RequestMapping("/mianfeidingyue")
    public String mianfeidingyue(Model model,String name,String biao){
        UserBuy userBuy2=new UserBuy();
        userBuy2.setUsername(biao);
        userBuy2.setBiao(name);
        zhouXiLieService.insert(userBuy2);

        UserBuy userBuy1 = zhouXiLieService.selectUserBuy(biao, name);
        UserBuy userBuy=new UserBuy();
        userBuy.setUsername(userBuy1.getUsername());
        userBuy.setBiao(userBuy1.getBiao());
        userBuy.setId(userBuy1.getId());
        userBuy.setLei(1);
        zhouXiLieService.update(userBuy);
        return "redirect:/xilie";
    }

    @RequestMapping("/insertXiangLun")
    public String insertXiangLun(XiLieXiangLun xiLieXiangLun){
        xiLieXiangLun.setTime(new Date());
        zhouXiLieService.insert(xiLieXiangLun);
        return "redirect:/xilie";
    }
}
