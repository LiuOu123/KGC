package com.kgc.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.*;
import com.kgc.service.LoLunTanService;
import javafx.beans.binding.ObjectExpression;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

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
    public Map<String, Object> dengluchaxinxi(int id) {
        Map<String, Object> map = new HashMap<>();
        List<UserInfo> userInfos = loLunTanService.selectByUserId(id);
        map.put("data", userInfos.get(userInfos.size() - 1));
        return map;
    }

    @RequestMapping("/luntanxiangxi{title}")//根据title查找帖子
    public String luntanxiangxi(String title, Model model) {
        LunTan lunTan = loLunTanService.selectLunTanByTiTle(title);//根据title查找帖子
        List<TieZiHiuFu> tieZiHiuFus = loLunTanService.selectHuiFU(lunTan.getId());//根据帖子id查找回复 并且将回复的用户信息一起查出来
        model.addAttribute("luntan", lunTan);//帖子信息
        model.addAttribute("tiezihuifu", tieZiHiuFus);//回复信息
        return "luntanxiang";
    }

    //论坛详细页面给帖子的回复
    @RequestMapping("/huitie")
    public String huitie(Model model, TieZiHiuFu tieZiHiuFu) {
        tieZiHiuFu.setTime(new Date());
        tieZiHiuFu.setTiezitype(1);
        System.out.println(tieZiHiuFu.toString());
        int pljie = loLunTanService.insertTieZiHuiFu(tieZiHiuFu);
        System.out.println("评论添加：" + pljie);
        LunTan lunTan = loLunTanService.selectByLunTanId(tieZiHiuFu.getLuntanid());
        return "redirect:/luntanxiangxi?title=" + lunTan.getTitle();
    }

    //论坛用户主页

    //主页用户信息
    @RequestMapping("/zhuye{username}")
    @ResponseBody
    public Map<String, Object> zhuye(String username, Model model) {
        Map<String, Object> map = new HashMap<>();
        UserInfo userInfo = loLunTanService.selectByNiCheng(username);//根据用户昵称查找用户信息
        map.put("data", userInfo);
        return map;
    }

    //主页用户发过的帖子(分页)
    @RequestMapping("/zhuyefatie{id}")
    @ResponseBody
    public Map<String, Object> fatie(int id, Model model) {
        Map<String, Object> map = new HashMap<>();
        List<LunTan> lunTans = loLunTanService.selectLunTanByUserId(id);//根据用户id返回发过的帖子
        PageInfo<LunTan> pageInfo = new PageInfo<>(lunTans);
        map.put("data", pageInfo);
        return map;
    }

    //删除用户发过的帖子 将type改成2 让用户看不到
    @RequestMapping("/delfatie{id}")
    @ResponseBody
    public Map<String, Object> delfatie(int id) {
        Map<String, Object> map = new HashMap<>();
        LunTan lunTan = new LunTan(id, 2);
        int i = loLunTanService.updateLunTanType(lunTan);
        if (i > 0) {
            map.put("status", "true");
        } else {
            map.put("status", "false");
        }
        return map;
    }

    //主页用户发过的回帖
    @RequestMapping("/zhuyehuitie{id}")
    @ResponseBody
    public Map<String, Object> zhuyehuitie(int id, Model model) {
        Map<String, Object> map = new HashMap<>();
        List<TieZiHiuFu> tieZiHiuFus = loLunTanService.selectTZHFByUserId(id);//根据用户id查询给所有帖子的回帖
        PageInfo<TieZiHiuFu> pageInfo = new PageInfo<>(tieZiHiuFus);
        map.put("data", pageInfo);
        return map;
    }

    //论坛用户中心收藏的帖子
    @RequestMapping("/yonghuchoucangtiezi{id}")
    @ResponseBody
    public Map<String, Object> yonghuchoucangtiezi(int id) {//根据id查找用户收藏的帖子并且将收藏的帖子信息显示出来
        Map<String, Object> map = new HashMap<>();
        List<ShouCang> shouCangs = loLunTanService.selectSCByUserId(id);
        map.put("data", shouCangs);
        return map;
    }

    //将用户收藏的帖子类型修改为2让用户不可见
    @RequestMapping("/updateshoucang{id}")
    @ResponseBody
    public Map<String, Object> updateshoucang(int id) {
        Map<String, Object> map = new HashMap<>();
        ShouCang shouCang = new ShouCang(id, 2);
        int i = loLunTanService.updateShouCangType(shouCang);
        if (i > 0) {
            map.put("status", "true");
        } else {
            map.put("status", "false");
        }
        return map;
    }

    //论坛基本设置
    //读取用户信息数据
    @RequestMapping("/jibenshezhiyhxx")
    public String jibenshezhiyhxx(HttpSession session, Model model) {//根据id查找用户收藏的帖子并且将收藏的帖子信息显示出来
        int id = (int) session.getAttribute("userid");
        Map<String, Object> map = new HashMap<>();
        List<UserInfo> userInfos = loLunTanService.selectByUserId(id);
        model.addAttribute("shu", userInfos.get(userInfos.size() - 1));
        return "luntanjibenshezhi";
    }

    //修改用户信息数据
    @RequestMapping("/jibenshezhiyhxxupdate")
    public String jibenshezhiyhxxupdate(UserInfo userInfo, HttpSession session) {
        UserInfo chaUserInfo = loLunTanService.selectByUid(userInfo.getUid());//根据该uid(用户表的id)查找对应的信息 将信息插入进来 防止有的信息为空值
        userInfo.setAccid(chaUserInfo.getAccid());
        userInfo.setEmail(chaUserInfo.getEmail());
        userInfo.setPhone(chaUserInfo.getPhone());
        userInfo.setTouxiang(chaUserInfo.getTouxiang());
        userInfo.setUtype(1);
        System.out.println(userInfo.toString());
        Map<String, Object> map = new HashMap<>();
        //userInfo.setUtype(2);
        UserInfo userInfoxiu = new UserInfo(userInfo.getUid(), 2);
        int xiu = loLunTanService.updateUserInfoType(userInfoxiu);//将用户之前的信息修改为2
        System.out.println("将用户之前的数据type修改成2是否成功:" + xiu);
        userInfo.setUid(null);
        int add = loLunTanService.insertUserInfo(userInfo);//添加用户信息
        System.out.println("添加用户信息是否成功:" + add);
        session.setAttribute("userxinxi", userInfo);
        return "redirect:/jibenshezhiyhxx";
    }

    //上传用户头像
    @RequestMapping("/doTestUploadFile")
    public String doTestUploadFile(MultipartFile test_pic, HttpSession session, HttpServletRequest request, int id) {
        //获取源文件名
        String originalFilename = test_pic.getOriginalFilename();
        if (originalFilename == null || originalFilename.length() == 0) {
            request.setAttribute("msg", "文件不能为空");
            return "testUploadFile";
        }
        if (test_pic.getSize() > (1024 * 1024)) {
            request.setAttribute("msg", "文件大小不能大于1M");
            return "testUploadFile";
        }
        List<String> prefixs = new ArrayList<>();
        prefixs.add("jpg");
        prefixs.add("png");
        prefixs.add("jpeg");
        prefixs.add("pneg");

        //获取上传路径
        String realPath = request.getServletContext().getRealPath("static/luntan/touxiang");

        //拓展名
        String prefix = FilenameUtils.getExtension(originalFilename);
        if (prefixs.contains(prefix) == false) {
            request.setAttribute("msg", " * 上传图片格式不正确");
            return "testUploadFile";
        }
        //生成新的文件名
        String fileName = System.currentTimeMillis() + (RandomUtils.nextInt(1000) + "_test.") + prefix;
        UserInfo userInfo = loLunTanService.selectUserInfoLimitNew1(id);//查该用户的最新数据
        userInfo.setTouxiang(fileName);//将更改后的头像修改进来
        UserInfo userInfoxiu = new UserInfo(userInfo.getUid(), 2);
        int xiu = loLunTanService.updateUserInfoType(userInfoxiu);//将用户之前的信息修改为2
        System.out.println("将用户之前的数据type修改成2是否成功:" + xiu);
        userInfo.setUid(null);
        int add = loLunTanService.insertUserInfo(userInfo);//添加用户信息
        System.out.println("添加用户信息是否成功:" + add);
        session.setAttribute("userxinxi", userInfo);
        //封装File对象
        File file = new File(realPath, fileName);
        //上传
        try {
            test_pic.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("msg", e.getMessage());
            System.out.println(e.getMessage());
            return "redirect:/jibenshezhiyhxx";
        }
        request.setAttribute("uri", fileName);
        return "redirect:/jibenshezhiyhxx";
    }

    @RequestMapping("/quemima")
    @ResponseBody
    public Map<String, Object> quemima(int id, String password) {
        Map<String, Object> map = new HashMap<>();
        User user = loLunTanService.selectByid(id);
        if (user.getPwd().trim().equals(password.trim())) {
            map.put("status", "true");
        } else {
            map.put("status", "false");
        }
        return map;
    }

    @RequestMapping("/updatemima")
    public String updatemima(User user, Model model, HttpSession session) {
        int jie = loLunTanService.updatepassword(user);
        int ujie = 0;
        if (jie > 0) {
            ujie = 1;
        } else {
            ujie = -1;
        }
        System.out.println("ujie" + ujie);
        session.setAttribute("ujie", ujie);
        return "redirect:/jibenshezhiyhxx";
    }

    /*@RequestMapping("/chaWoDeXiaoXi")
    public String chaWoDeXiaoXi(HttpSession session,Model model){
        int userid=(int)session.getAttribute("userid");
        Map<String,Object> map=new HashMap<>();
        List<WoDeXiaoXi> woDeXiaoXis = loLunTanService.selectByShouUserId(userid);
        for (WoDeXiaoXi woDeXiaoXi : woDeXiaoXis) {
            System.out.println(woDeXiaoXi.toString());
        }
        model.addAttribute("shu",woDeXiaoXis);
        return "luntanwodexiaoxi";
    }*/
    @RequestMapping("/chaWoDeXiaoXi")
    @ResponseBody
    public Map<String, Object> chaWoDeXiaoXi(HttpSession session, Integer pageNum, Integer pageSize) {
        Map<String, Object> map = new HashMap<>();
        int userid = (int) session.getAttribute("userid");
        PageHelper.startPage(pageNum, pageSize);
        List<WoDeXiaoXi> woDeXiaoXis = loLunTanService.selectByShouUserId(userid);
        System.out.println(woDeXiaoXis.toString());
        PageInfo<WoDeXiaoXi> pageInfo = new PageInfo<>(woDeXiaoXis);
        map.put("data", pageInfo);
        return map;
    }

    @RequestMapping("/updateWoDeXiaoXi")//根据我的消息表id将该数据修改成2(用户不可见)
    @ResponseBody
    public Map<String, Object> updateWoDeXiaoXi(int id) {
        Map<String, Object> map = new HashMap<>();
        int i = loLunTanService.updateWDXXLei(id);
        if (i > 0) {
            map.put("status", true);
        } else {
            map.put("status", false);
        }
        return map;
    }

    @RequestMapping("/chuanzhichaliaotian")
    @ResponseBody
    public Map<String, Object> chuanzhichaliaotian(int userid, int faid,int xid, HttpSession session) {
        Map<String, Object> map = new HashMap<>();
        WoDeXiaoXi woDeXiaoXi = loLunTanService.selectByXid(xid);
        System.out.println("pan"+woDeXiaoXi.toString());
        if(woDeXiaoXi.getXlei()==1){
            int i = loLunTanService.updateWDXXLei3(xid);
            System.out.println("将该条数据改成已读是否成功"+i);
        }
        session.setAttribute("chatuserid", userid);
        session.setAttribute("chatfaid", faid);
        map.put("status", true);
        return map;
    }

    /*@RequestMapping("/chaliaotian")
    public String chaliaotian(HttpSession session, Model model) {
        int userid=(int) session.getAttribute("chatuserid");
        int faid=(int) session.getAttribute("chatfaid");
        List<WoDeXiaoXi> woDeXiaoXis = loLunTanService.selectByShouFa(userid, faid);
        for (int i = 0; i < woDeXiaoXis.size(); i++) {
            System.out.println(woDeXiaoXis.get(i).toString());
        }
        model.addAttribute("shu", woDeXiaoXis);
        session.removeAttribute("chatuserid");
        session.removeAttribute("chatfaid");
        return "chat";
    }*/
    @RequestMapping("/chaliaotian")
    @ResponseBody
    public Map<String, Object> chaliaotian(HttpSession session) {
        Map<String, Object> map = new HashMap<>();
        int userid = (int) session.getAttribute("chatuserid");
        int faid = (int) session.getAttribute("chatfaid");
        List<WoDeXiaoXi> woDeXiaoXis = loLunTanService.selectByShouFa(userid, faid);
        for (int i = 0; i < woDeXiaoXis.size(); i++) {
            System.out.println(woDeXiaoXis.get(i).toString());
        }

        map.put("data", JSONObject.parse(JSONArray.toJSONString(woDeXiaoXis, SerializerFeature.DisableCircularReferenceDetect)));
        return map;
    }
    @RequestMapping("/addchat")
    @ResponseBody
    public Map<String, Object> addchat(WoDeXiaoXi woDeXiaoXi) {
        Map<String, Object> map = new HashMap<>();
        woDeXiaoXi.setBiao(woDeXiaoXi.getChat());
        woDeXiaoXi.setTime(new Date());
        woDeXiaoXi.setXlei(1);
        int i = loLunTanService.addWDXX(woDeXiaoXi);
        if (i > 0) {
            map.put("status", true);
        } else {
            map.put("status", false);
        }
        return map;
    }
}
