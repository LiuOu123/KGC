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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

@Controller
public class gradeUserController  {
    @Resource
    GradeUserService gradeUserService;
    @Resource
    ReleaseeSerivce releaseeSerivce;
    @Resource
    worksService worksService;
    @Resource
    ReplyService replyService;
    @RequestMapping("toSelectTest")
    public  String toSelectTest(Model model, HttpSession session,String pageNumStr,String title){
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
            return "article-list-student";
        }

        List<Releasee> studentworks = null;
        try {
            studentworks = releaseeSerivce.studentworks(example1);
            PageInfo<Releasee> list = new PageInfo<>(studentworks);
            model.addAttribute("pageInfo",list);

            model.addAttribute("title",title);
            return "article-list-student";
        } catch (Exception e) {
            e.printStackTrace();
            return "article-list-student";
        }




    }
    //下载图片
    @RequestMapping("/download")
    @ResponseBody
    public void download(String filename, HttpServletRequest request, HttpServletResponse response){
        //获取上传路径
        String realPath = request.getServletContext().getRealPath("static/images/uploadfiles");
        //封装file
        File file=new File(realPath,filename);
        //设置相应类型
        response.setContentType("application/x-msdownload");
        //设置默认文件名
        response.setHeader("Content-Disposition", "attachment;filename=" + filename);
        //下载
        try {
            Files.copy(file.toPath(), response.getOutputStream());//Files.copy(要下载的文件的路径,响应的输出流)
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //学生提交作业
    @RequestMapping("doAddReleaseStuTest")
    public  String doAddReleaseStuTest(Works works, @RequestParam("file") MultipartFile namepic, HttpServletRequest request,String context){
        //获取原文件名
        String originalFilename = namepic.getOriginalFilename();
        System.out.println("原图片名称"+originalFilename);
        if (originalFilename.length()==0||originalFilename==null){
            request.setAttribute("msg","请选择文件");
            return "testUploadFile";
        }
        if (namepic.getSize()>(1024*1024)){
            request.setAttribute("msg","文件大小不能超过1M");
            return "testUploadFile";
        }

        /*获取上传路劲*/
        String realPath = request.getSession().getServletContext().getRealPath("static/images/uploadfiles");


        //获取扩展名
        String extension = FilenameUtils.getExtension(originalFilename);
        List list=new ArrayList();
        list.add("jpg");
        list.add("JPG");
        list.add("png");
        list.add("gif");
        if (list.contains(extension)==false){
            request.setAttribute("msg","文件格式不正确");
            return "testUploadFile";
        }
        System.out.println("原图片拓展名"+extension);
        //生成新文件名
        String fileName=System.currentTimeMillis()+ (RandomUtils.nextInt(10000000)+"_Personal.")+extension;
        System.out.println("新文件名"+fileName);

        /*封装file对象*/
        File file=new File(realPath,fileName);
        /*上传*/
        try {
            namepic.transferTo(file);
            works.setImg(fileName);
            Reply reply=new Reply();
            int i = worksService.insertSelective(works);

            if (i>0){
                reply.setReplynei(context);
                reply.setWorid(works.getWid());
                int i1 = replyService.insertSelective(reply);
                if (i1>0){
                    return "redirect:toSelectTest";
                }else {
                    return "redirect:toSelectTest";
                }

            }else {
                return "redirect:toSelectTest";
            }

        } catch (IOException e) {
            e.printStackTrace();
            return "redirect:toSelectTest";
        }

    }
    /*老师查看班级的学生显示*/

    @RequestMapping("chastudent")
    public String toClass(Model model,HttpSession session,String pageNumStr,String title){
        /*查出登录老师属于哪个班级*/
        User login =(User) session.getAttribute("login");
        GradeUserExample gradeUserExample=new GradeUserExample();
        GradeUserExample.Criteria criteria = gradeUserExample.createCriteria();
        criteria.andUseridEqualTo(login.getId());
        List<GradeUser> gradeUsers = gradeUserService.studengtselectClass(gradeUserExample);


        Integer pageNum=1;//第几页
        if(pageNumStr!=null){
            pageNum=Integer.parseInt(pageNumStr);
        }
        Integer pageSize=5;//每页的数量

//排序
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("guid desc");
        /*根据班级和查学生*/
        GradeUserExample example=new GradeUserExample();
        GradeUserExample.Criteria criteria1 = example.createCriteria();
        criteria1.andGradeidEqualTo(gradeUsers.get(0).getGradeid());
        criteria1.andleiEqualTo(1);
        if (title!=null&&title.isEmpty()==false){
            criteria1.andtitleLike("%"+title+"%");
        }
        List<GradeUser> gradeUsers1 = gradeUserService.studengtselectClass(example);
        PageInfo<GradeUser> gradeUserPageInfo = new PageInfo<>(gradeUsers1);
        model.addAttribute("pageInfo",gradeUserPageInfo);
        model.addAttribute("title",title);
        model.addAttribute("classname",gradeUsers1.get(0).getGrade().getGname());
        return "menu2";
    }

}
