package com.kgc.pojo;

import java.util.Date;

public class LunTan {
    private Integer id;

    private String title;

    private String neirong;

    private Integer userid;

    private String img;

    private Date time;

    private Integer liulanliang;

    private String lei;

    private Integer wanjie;

    private Integer jingtie;

    private Integer type;

    private UserInfo userInfo;

    public LunTan() {
    }

    public LunTan(Integer id, Integer type) {
        this.id = id;
        this.type = type;
    }

    @Override
    public String toString() {
        return "LunTan{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", neirong='" + neirong + '\'' +
                ", userid=" + userid +
                ", img='" + img + '\'' +
                ", time=" + time +
                ", liulanliang=" + liulanliang +
                ", lei='" + lei + '\'' +
                ", wanjie=" + wanjie +
                ", jingtie=" + jingtie +
                ", type=" + type +
                ", userInfo=" + userInfo +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNeirong() {
        return neirong;
    }

    public void setNeirong(String neirong) {
        this.neirong = neirong;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getLiulanliang() {
        return liulanliang;
    }

    public void setLiulanliang(Integer liulanliang) {
        this.liulanliang = liulanliang;
    }

    public String getLei() {
        return lei;
    }

    public void setLei(String lei) {
        this.lei = lei;
    }

    public Integer getWanjie() {
        return wanjie;
    }

    public void setWanjie(Integer wanjie) {
        this.wanjie = wanjie;
    }

    public Integer getJingtie() {
        return jingtie;
    }

    public void setJingtie(Integer jingtie) {
        this.jingtie = jingtie;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}