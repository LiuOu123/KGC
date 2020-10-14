package com.kgc.pojo;

import java.util.Date;

public class WoDeXiaoXi {
    private Integer xid;

    private Integer senduserid;

    private String biao;

    private String chat;

    private String img;

    private Integer shouuserid;

    private Date time;

    private Integer xlei;

    public Integer getXid() {
        return xid;
    }

    public void setXid(Integer xid) {
        this.xid = xid;
    }

    public Integer getSenduserid() {
        return senduserid;
    }

    public void setSenduserid(Integer senduserid) {
        this.senduserid = senduserid;
    }

    public String getBiao() {
        return biao;
    }

    public void setBiao(String biao) {
        this.biao = biao == null ? null : biao.trim();
    }

    public String getChat() {
        return chat;
    }

    public void setChat(String chat) {
        this.chat = chat == null ? null : chat.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Integer getShouuserid() {
        return shouuserid;
    }

    public void setShouuserid(Integer shouuserid) {
        this.shouuserid = shouuserid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getXlei() {
        return xlei;
    }

    public void setXlei(Integer xlei) {
        this.xlei = xlei;
    }
}