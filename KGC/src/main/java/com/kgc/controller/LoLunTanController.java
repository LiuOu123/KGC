package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.LunTan;
import com.kgc.pojo.LunTanHuiTie;
import com.kgc.pojo.TieZiHiuFu;
import com.kgc.pojo.UserInfo;
import com.kgc.service.LoLunTanService;
import javafx.beans.binding.ObjectExpression;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoLunTanController {
    @Resource
    LoLunTanService loLunTanService;

    @RequestMapping("/luntan")//进入论坛的值
    public String luntan(Model model) {
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        List<LunTan> lunTans = loLunTanService.selectAll();
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/luntanfen")//论坛的分页功能
    public String luntanfen(Model model, int pageNumStr) {
        Integer pageNum = pageNumStr;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        List<LunTan> lunTans = loLunTanService.selectAll();
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/luntanweijie{weijie}")//根据传过来的值判断是否是完结的帖子
    public String weijie(int weijie, Model model) {
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        List<LunTan> lunTans = loLunTanService.selectWeiJie(weijie);
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/jingtie")//查看是精帖的帖子
    public String jingtie(Model model) {
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        List<LunTan> lunTans = loLunTanService.selectJingHua();
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/zuixin")//查看最新的帖子
    public String zuixin(Model model) {
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        PageHelper.orderBy("time");
        List<LunTan> lunTans = loLunTanService.selectZuiXin();
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/reyi")//查看关注量最大的帖子
    public String reyi(Model model) {
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        PageHelper.orderBy("liulanliang");
        List<LunTan> lunTans = loLunTanService.selectReYi();
        List<LunTan> zhiding = loLunTanService.selectZhiDing();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        System.out.println(lunTans.toString());
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("zhiding", zhiding);
        return "luntan";
    }

    @RequestMapping("/remen")//查看热门帖子
    @ResponseBody
    public Map<String, Object> reyi() {
        Map<String, Object> map = new HashMap<>();
        Integer pageNum = 1;
        Integer pageSize = 6;
        PageHelper.startPage(pageNum, pageSize);
        PageHelper.orderBy("liulanliang");
        List<LunTan> lunTans = loLunTanService.selectReYi();
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        map.put("data", pageInfo);
        return map;
    }

    @RequestMapping("/huitiepaihang")//查看回帖数量排行前四名
    @ResponseBody
    public Map<String, Object> huitiepaihang() {
        Map<String, Object> map = new HashMap<>();
        List<LunTanHuiTie> lunTanHuiTies = loLunTanService.selectHuiTie();
        for (int i = 0; i < lunTanHuiTies.size(); i++) {
            LunTanHuiTie xin = lunTanHuiTies.get(i);
            for (int j = i + 1; j < lunTanHuiTies.size(); j++) {
                if (xin.getId() == lunTanHuiTies.get(j).getId()) {
                    lunTanHuiTies.remove(j);
                }
            }
        }
        List<LunTanHuiTie> zuixin = new ArrayList<>();
        for (int i = 0; i < lunTanHuiTies.size(); i++) {
            for (int j = i + 1; j < lunTanHuiTies.size(); j++) {
                if (lunTanHuiTies.get(i).getId() < lunTanHuiTies.get(j).getId()) {
                    LunTanHuiTie san = lunTanHuiTies.get(j);
                    LunTanHuiTie yi = lunTanHuiTies.get(i);
                    LunTanHuiTie er = lunTanHuiTies.get(j);
                    yi = er;
                    er = san;
                }
            }
        }
        for (int i = 1; i <= 4; i++) {
            zuixin.add(lunTanHuiTies.get(lunTanHuiTies.size() - i));
        }
        map.put("data", zuixin);
        return map;
    }

    @RequestMapping("/dengluchaxinxi")//在登陆的时候查询登陆用户的信息
    @ResponseBody
    public Map<String, Object> dengluchaxinxi(int id){
        Map<String, Object> map = new HashMap<>();
        List<UserInfo> userInfos = loLunTanService.selectByUserId(id);
        map.put("data",userInfos.get(userInfos.size()-1));
        return map;
    }
    @RequestMapping("/luntanxiangxi{title}")//根据title查找帖子
    public String luntanxiangxi(String title,Model model){
        LunTan lunTan = loLunTanService.selectLunTanByTiTle(title);//根据title查找帖子
        List<TieZiHiuFu> tieZiHiuFus = loLunTanService.selectHuiFU(lunTan.getId());//根据帖子id查找回复 并且将回复的用户信息一起查出来
        model.addAttribute("luntan",lunTan);//帖子信息
        model.addAttribute("tiezihuifu",tieZiHiuFus);//回复信息
        return "luntanxiang";
    }
}
