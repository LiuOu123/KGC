package com.kgc.pojo;

import java.util.Date;

public class Works {
    private Integer wid;

    private Integer gradeid;

    private Integer userid;

    private Integer relid;

    private String wortitle;

    private String wornei;

    private Date wordate;

    private Integer isverify;

    private String img;
    /**/
    private  User user;
    private  Grade grade;
    private  Reply reply;
    private  Releasee releasee;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public Reply getReply() {
        return reply;
    }

    public void setReply(Reply reply) {
        this.reply = reply;
    }

    public Releasee getReleasee() {
        return releasee;
    }

    public void setReleasee(Releasee releasee) {
        this.releasee = releasee;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public Integer getGradeid() {
        return gradeid;
    }

    public void setGradeid(Integer gradeid) {
        this.gradeid = gradeid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getRelid() {
        return relid;
    }

    public void setRelid(Integer relid) {
        this.relid = relid;
    }

    public String getWortitle() {
        return wortitle;
    }

    public void setWortitle(String wortitle) {
        this.wortitle = wortitle == null ? null : wortitle.trim();
    }

    public String getWornei() {
        return wornei;
    }

    public void setWornei(String wornei) {
        this.wornei = wornei == null ? null : wornei.trim();
    }

    public Date getWordate() {
        return wordate;
    }

    public void setWordate(Date wordate) {
        this.wordate = wordate;
    }

    public Integer getIsverify() {
        return isverify;
    }

    public void setIsverify(Integer isverify) {
        this.isverify = isverify;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }
}