package com.kgc.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.kgc.pojo.*;
import com.kgc.service.LvDongService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-09-08 10:15
 */
@Controller
public class ChitchatController {
    @Resource
    LvDongService service;



    @RequestMapping("/lvSelectPaper")
    @ResponseBody
    public Map<String,Object> lvSelectPaper(Integer pageIndex,Integer pageSize){
        Map<String,Object> map=new HashMap<>();
        PageHelper.startPage(pageIndex,pageSize);
        List<ExamPaper> examPapers = service.lvSelectPaper();
        PageInfo<ExamPaper> pageInfo=new PageInfo<>(examPapers);
        map.put("data",pageInfo);
        return map;
    }

    @RequestMapping("/addKaoShi")
    public String addKaoShi(ExamPaper examPaper, Integer zong, HttpServletRequest request){
        examPaper.setCreateTime(new Date());
        int i1 = service.lvAddExamPapar(examPaper);
        int id = service.lvSelectByPaper(examPaper.getPapername());
        for (int i=1;i<=zong;i++){
            String ename = request.getParameter(i + "ename");
            Integer escore =Integer.parseInt(request.getParameter(i + "escore"));
            Integer etype = Integer.parseInt(request.getParameter(i + "etype"));
            String ea = request.getParameter(i + "ea");
            String eb = request.getParameter(i + "eb");
            String ec = request.getParameter(i + "ec");
            String ed = request.getParameter(i + "ed");
            String ekeys = request.getParameter(i + "ekeys");
            String ehints = request.getParameter(i + "ehints");
            ExamItems examItems=new ExamItems();
            examItems.setEname(ename);
            examItems.setEscore(escore);
            examItems.setEtype(etype);
            examItems.setEa(ea);
            examItems.setEb(eb);
            if (ec!=null){  examItems.setEc(ec);}
            if (ed!=null){  examItems.setEd(ed);}
            examItems.setEkeys(ekeys);
            examItems.setEhints(ehints);
            examItems.setEpaperid(id);
            service.lvAddExamItems(examItems);
        }
        return "/lvkaoshi";
    }
}
