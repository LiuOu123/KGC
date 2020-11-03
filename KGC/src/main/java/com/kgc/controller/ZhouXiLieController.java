package com.kgc.controller;

import com.kgc.pojo.JieAndXiang;
import com.kgc.pojo.UserBuy;
import com.kgc.pojo.XiLieKeCheng;
import com.kgc.service.ZhouXiLieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class ZhouXiLieController {

    @Resource
    ZhouXiLieService zhouXiLieService;

    @RequestMapping("/xiliekecheng")
    public String xiliekecheng(String name, Model model,String biao){
        XiLieKeCheng xiLieKeChengs = zhouXiLieService.selectAll(name);
        List<XiLieKeCheng> selectXiLie = zhouXiLieService.selectXiLie();
        List<XiLieKeCheng> selectXiangAndJie = zhouXiLieService.selectXiangAndJie(name);
        String xiang = selectXiangAndJie.get(0).getXiang();
        String[] split = xiang.split("~");

        String jie = selectXiangAndJie.get(0).getJie();
        String[] split1 = jie.split("~");

        int count = zhouXiLieService.count(biao,name);
        List<JieAndXiang> list=new ArrayList();
        for (int i = 0; i < split1.length; i++) {
            JieAndXiang jieAndXiang=new JieAndXiang(split1[i],split[i]);
            list.add(jieAndXiang);
        }
        UserBuy userBuy = zhouXiLieService.selectUserBuy(biao, name);
        if(userBuy!=null) {
            model.addAttribute("userBuy", userBuy);
        }else{

        }

        model.addAttribute("list",list);
        model.addAttribute("count",count);
        System.out.println(count);
        model.addAttribute("selectXiLie",selectXiLie);
        model.addAttribute("xiLieKeChengs",xiLieKeChengs);
        return "xiliexiang";
    }

    @RequestMapping("/ZhiFuBao")
    public String zhifubao(Model model,String name,float price,String miaoshu){
        System.out.println(miaoshu);
        model.addAttribute("name",name);
        model.addAttribute("price",price);
        model.addAttribute("miaoshu",miaoshu);
        return "index";
    }

    @RequestMapping("/FuKuan")
    public String fukuan(Model model,String WIDsubject){
        System.out.println(WIDsubject);
        UserBuy userBuy=new UserBuy();
        userBuy.setBiao(WIDsubject);
        userBuy.setUsername("admin");
        zhouXiLieService.insert(userBuy);
        return "alipay.trade.page.pay";
    }

    @RequestMapping("/dingyue")
    public String dingyue(Model model,String name,String biao){
        UserBuy userBuy1 = zhouXiLieService.selectUserBuy(biao, name);
        System.out.println(name);
        System.out.println(biao);
        UserBuy userBuy=new UserBuy();
        userBuy.setUsername(userBuy1.getUsername());
        userBuy.setBiao(userBuy1.getBiao());
        userBuy.setId(userBuy1.getId());
        userBuy.setLei(1);
        zhouXiLieService.update(userBuy);
        return "redirect:/xilie";
    }

}
