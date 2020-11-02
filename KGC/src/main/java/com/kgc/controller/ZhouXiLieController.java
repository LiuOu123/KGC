package com.kgc.controller;

import com.kgc.pojo.JieAndXiang;
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
    public String xiliekecheng(String name, Model model){
        XiLieKeCheng xiLieKeChengs = zhouXiLieService.selectAll(name);
        List<XiLieKeCheng> selectXiLie = zhouXiLieService.selectXiLie();
        List<XiLieKeCheng> selectXiangAndJie = zhouXiLieService.selectXiangAndJie(name);
        String xiang = selectXiangAndJie.get(0).getXiang();
        String[] split = xiang.split("~");
        String jie = selectXiangAndJie.get(0).getJie();
        String[] split1 = jie.split("~");
        /*for (int i = 0; i <selectXiangAndJie.size(); i++) {
            selectXiangAndJie.get(i).setXiang(split[i]);
        }
        for (int i = 0; i <selectXiangAndJie.size(); i++) {
            selectXiangAndJie.get(i).setJie(split1[i]);
        }
*/
        List<JieAndXiang> list=new ArrayList();
        for (int i = 0; i < split1.length; i++) {
            JieAndXiang jieAndXiang=new JieAndXiang(split1[i],split[i]);
            list.add(jieAndXiang);
        }
        model.addAttribute("list",list);
        model.addAttribute("selectXiLie",selectXiLie);
        model.addAttribute("xiLieKeChengs",xiLieKeChengs);
        return "xiliexiang";
    }

    @RequestMapping("/ZhiFuBao")
    public String zhifubao(Model model,String name,float price,Integer id){
        System.out.println(name);
        model.addAttribute("id",id);
        model.addAttribute("name",name);
        model.addAttribute("price",price);
        return "index";
    }

    @RequestMapping("/FuKuan")
    public String fukuan(Model model,int id){
        XiLieKeCheng xiLieKeCheng=new XiLieKeCheng();
        xiLieKeCheng.setId(id);
        xiLieKeCheng.setLei("1");
        zhouXiLieService.update(xiLieKeCheng);
        return "alipay.trade.page.pay";
    }

}
