package com.kgc.controller.zhangjiahe;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.*;
import com.kgc.service.GradeUserService;
import com.kgc.service.ReleaseeSerivce;
import com.kgc.service.ReplyService;
import com.kgc.service.worksService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class releaseeController {
    @Resource
    GradeUserService gradeUserService;
    @Resource
    ReleaseeSerivce releaseeSerivce;
    @Resource
    worksService worksService;
    @Resource
    ReplyService replyService;
    @RequestMapping("/toReleaseTest")
    public  String toReleaseTest(Model model, HttpSession session, String pageNumStr, String title){
        User login =(User) session.getAttribute("login");
        GradeUserExample example=new GradeUserExample();
        GradeUserExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(login.getId());
        List<GradeUser> gradeUsers = null;
        try {
            gradeUsers = gradeUserService.studengtselectClass(example);
        } catch (Exception e) {
            e.printStackTrace();
            return "article-list-student";
        }
        Integer pageNum=1;//第几页
        if(pageNumStr!=null){
            pageNum=Integer.parseInt(pageNumStr);
        }
        Integer pageSize=5;//每页的数量

//排序
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("rid desc");

        ReleaseeExample example1= null;
        try {
            example1 = new ReleaseeExample();
            ReleaseeExample.Criteria criteria1 = example1.createCriteria();
            criteria1.andGradeidEqualTo(gradeUsers.get(0).getGradeid());
            if (title!=null&&title.isEmpty()==false){
                criteria1.andReltitleLike("%"+title+"%");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "article-list";
        }

        List<Releasee> studentworks = null;
        try {
            studentworks = releaseeSerivce.studentworks(example1);
            PageInfo<Releasee> list = new PageInfo<>(studentworks);
            model.addAttribute("pageInfo",list);
            model.addAttribute("list",list);
            return "article-list";
        } catch (Exception e) {
            e.printStackTrace();
            return "article-list";
        }
    }
    @RequestMapping("articledel")
    public  String  articledel(Integer rid){
        int i = releaseeSerivce.deleteByPrimaryKey(rid);
        if (i>0){
           return "redirect:toReleaseTest";
        }else {
            return "redirect:toReleaseTest";
        }
    }
    /*老师修改发布作业*/
    @RequestMapping("/updatetoReleaseTest")
    public String updatetoReleaseTest(Model model,Integer rid){
        Releasee releasee = releaseeSerivce.selectByPrimaryKey(rid);
        model.addAttribute("list",releasee);
        return "updatedanye-detail-teacher";
    }
    @RequestMapping("/updatedoAddReleaseTest")
    public String updatedoAddReleaseTest(MultipartFile text_upload,Integer rid, HttpSession session,HttpServletRequest request, Releasee releasee, Model model){
        if (text_upload!=null&&text_upload.isEmpty()==false){
            if(text_upload.getSize()>(5*1024*1024)){
                request.setAttribute("msg","超出文件最大限度5M");
                return "danye-detail-teacher";
            }

            //获取上传路径
            String realPath = request.getServletContext().getRealPath("static/images/uploadfiles");
            //获取源文件名
            String originalFilename = text_upload.getOriginalFilename();

            if(originalFilename==null||originalFilename.length()==0){
                request.setAttribute("msg","请选择上传文件");
                return "danye-detail-teacher";
            }

            //扩展名
            String prefix = FilenameUtils.getExtension(originalFilename);

            List<String>list=new ArrayList<>();
            list.add("jpg");
            list.add("png");
            list.add("jpeg");
            list.add("pneg");
            list.add("JPG");
            list.add("PNG");
            list.add("JPEG");
            list.add("PNEG");
            if(list.contains(prefix)==false){
                request.setAttribute("msg","文件格式不正确");
                return "danye-detail-teacher";
            }

            //生成新的文件名
            String fileName=System.currentTimeMillis() + (RandomUtils.nextInt(10000)+"_text.")+prefix;
            //封装File对象
            File file=new File(realPath,fileName);
            //上传
            try {
                text_upload.transferTo(file);
                releasee.setRid(rid);
                    releasee.setImg(fileName);
                int i = releaseeSerivce.updateByPrimaryKeySelective(releasee);
                if (i>0){
                    return "redirect:toReleaseTest";
                }else {
                    return "redirect:toReleaseTest";
                }

            } catch (IOException e) {
                e.printStackTrace();
                request.setAttribute("msg",e.getMessage());
                return "danye-detail-teacher";
            }
        }else {
            releasee.setRid(rid);
            int i = releaseeSerivce.updateByPrimaryKeySelective(releasee);
            if (i>0){
                return "redirect:toReleaseTest";
            }else {
                return "redirect:toReleaseTest";
            }
        }
    }
    /*老师添加作业*/
    @RequestMapping("/toAddReleaseTest")
    public String toAddReleaseTest(Model model){
        return "danye-detail-teacher";
    }
    @RequestMapping("/doAddReleaseTest")
    public String doAddReleaseTest(MultipartFile text_upload, HttpSession session,HttpServletRequest request, Releasee releasee, Model model){
        if(text_upload.getSize()>(5*1024*1024)){
            request.setAttribute("msg","超出文件最大限度5M");
            return "danye-detail-teacher";
        }

        //获取上传路径
        String realPath = request.getServletContext().getRealPath("static/images/uploadfiles");
        //获取源文件名
        String originalFilename = text_upload.getOriginalFilename();

        if(originalFilename==null||originalFilename.length()==0){
            request.setAttribute("msg","请选择上传文件");
            return "danye-detail-teacher";
        }

        //扩展名
        String prefix = FilenameUtils.getExtension(originalFilename);

        List<String>list=new ArrayList<>();
        list.add("jpg");
        list.add("png");
        list.add("jpeg");
        list.add("pneg");
        list.add("JPG");
        list.add("PNG");
        list.add("JPEG");
        list.add("PNEG");
        if(list.contains(prefix)==false){
            request.setAttribute("msg","文件格式不正确");
            return "danye-detail-teacher";
        }

        //生成新的文件名
        String fileName=System.currentTimeMillis() + (RandomUtils.nextInt(10000)+"_text.")+prefix;
        //封装File对象
        File file=new File(realPath,fileName);
        //上传
        try {
            text_upload.transferTo(file);
            User login =(User) session.getAttribute("login");
            GradeUserExample example=new GradeUserExample();
            GradeUserExample.Criteria criteria = example.createCriteria();
            criteria.andUseridEqualTo(login.getId());
            List<GradeUser> gradeUsers  = gradeUserService.studengtselectClass(example);
            releasee.setImg(fileName);
            releasee.setGradeid(gradeUsers.get(0).getGradeid());
            releasee.setReldate(new Date());
            int i = releaseeSerivce.insertSelective(releasee);
            if (i>0){
                return "redirect:toReleaseTest";
            }else {
                return "redirect:toReleaseTest";
            }

        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("msg",e.getMessage());
            return "danye-detail-teacher";
        }

    }

}
