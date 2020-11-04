package com.kgc.controller.zhangjiahe;

import com.kgc.pojo.*;
import com.kgc.service.LoLunTanService;
import com.kgc.service.ZhangTieZiHiuFuService;
import com.kgc.service.ZhangluntanhistoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class luntanhistoryController {
    @Resource
    ZhangluntanhistoryService zhangluntanhistoryService;
    @Resource
    LoLunTanService loLunTanService;
@Resource
    ZhangTieZiHiuFuService zhangTieZiHiuFuService;
    @RequestMapping("doluntanzhuye")
    public  String luntanzhuye(Model model, HttpSession session,String title){
        Integer userid = (Integer) session.getAttribute("userid");
        luntanhistoryExample example=new luntanhistoryExample();
        example.setOrderByClause("hoistroy_id desc");
        luntanhistoryExample.Criteria criteria = example.createCriteria();
        criteria.andHoistroyUseridEqualTo(userid);
        if (title!=null&&title.isEmpty()==false) {
            criteria.andTitleLike("%" + title + "%");
        }

        List<luntanhistory> luntanhistories = zhangluntanhistoryService.lthistory(example);
        TieZiHiuFuExample example1=new TieZiHiuFuExample();
        example1.setOrderByClause("id desc");
        TieZiHiuFuExample.Criteria criteria1 = example1.createCriteria();
        criteria1.andUseridEqualTo(userid);
        List<TieZiHiuFu> userhuifu = zhangTieZiHiuFuService.userhuifu(example1);
        model.addAttribute("userhuifu",userhuifu);
        model.addAttribute("luntanhistories",luntanhistories);
        return "luntanzhuye";
    }
    @RequestMapping("historydel")
public  String  hisdel(Integer hisID){
        int i = zhangluntanhistoryService.deleteByPrimaryKey(hisID);
        if (i>0){
            return "redirect:doluntanzhuye";
        }else {
            return "redirect:doluntanzhuye";
        }

    }
    @RequestMapping("/histotyluntanxiangxi{title}")//根据title查找帖子
    public String luntanxiangxi(String title, Model model,HttpSession session) {
        Integer userid = (Integer) session.getAttribute("userid");
        LunTan lunTan = loLunTanService.selectLunTanByTiTle(title);//根据title查找帖子
        luntanhistory luntanhistory=new luntanhistory();
        luntanhistory.setHoistroyDate(new Date());
        luntanhistory.setHoistroyLuntanid(lunTan.getId());
        luntanhistory.setHoistroyUserid(userid);
        int i = zhangluntanhistoryService.insertSelective(luntanhistory);
        List<TieZiHiuFu> tieZiHiuFus = loLunTanService.selectHuiFU(lunTan.getId());//根据帖子id查找回复 并且将回复的用户信息一起查出来
        model.addAttribute("luntan", lunTan);//帖子信息
        model.addAttribute("tiezihuifu", tieZiHiuFus);//回复信息
        return "luntanxiang";
    }
}
