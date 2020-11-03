package com.kgc.controller.zhangjiahe;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.*;
import com.kgc.service.ReleaseeSerivce;
import com.kgc.service.ReplyService;
import com.kgc.service.worksService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class worksController {
    @Resource
    worksService worksService;
    @Resource
    ReleaseeSerivce releaseeSerivce;
    @Resource
    ReplyService replyService;
    /*学生提交作业*/
    @RequestMapping("toaddworkscha")
    public  String toaddworkscha(Integer rid, Model model){
        ReleaseeExample example=new ReleaseeExample();
        ReleaseeExample.Criteria criteria = example.createCriteria();
        criteria.andRidEqualTo(rid);
        List<Releasee> studentworks = releaseeSerivce.studentworks(example);
        model.addAttribute("list",studentworks.get(0));
        return "danye-detail-student";
    }
    /*老师查看学生作业回复*/
    @RequestMapping("/toSelectAllTest")
    public String toSelectAllTest(Model model, Integer rid, String pageNumStr, HttpSession session,String title){
        session.setAttribute("toSelectAllTestrid",rid);
        Integer pageNum=1;//第几页
        if(pageNumStr!=null){
            pageNum=Integer.parseInt(pageNumStr);
        }
        Integer pageSize=5;//每页的数量

//排序
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("wid desc");

        WorksExample example=new WorksExample();
        WorksExample.Criteria criteria = example.createCriteria();
        criteria.andRelidEqualTo(rid);
        if (title!=null&&title.isEmpty()==false){
            criteria.andnameLike("%"+title+"%");
        }
        List<Works> workshuifu = worksService.workshuifu(example);
        PageInfo<Works> worksPageInfo = new PageInfo<>(workshuifu);
        model.addAttribute("title",title);
        model.addAttribute("rid",rid);
    model.addAttribute("pageInfo",worksPageInfo);
        return "danye-list";
    }
    /*老师删除学生回复*/
@RequestMapping("toSelectAllTestdel")
    public  String toSelectAllTestdel(Integer wid,HttpSession session){
    Integer toSelectAllTestrid =(Integer) session.getAttribute("toSelectAllTestrid");
    ReplyExample replyExample=new ReplyExample();
    ReplyExample.Criteria criteria = replyExample.createCriteria();
    criteria.andWoridEqualTo(wid);

    int i = replyService.deleteByExample(replyExample);
    if (i>0){
        return "redirect:toSelectAllTest?rid="+toSelectAllTestrid;
    }else {
        return "redirect:toSelectAllTest?rid="+toSelectAllTestrid;
    }

}
}
