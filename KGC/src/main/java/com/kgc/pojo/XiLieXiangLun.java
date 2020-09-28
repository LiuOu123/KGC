package com.kgc.pojo;

import java.util.Date;

public class XiLieXiangLun {
    private Integer id;

    private String name;

    private String user;

    private String chat;

    private Date time;

    private String src;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user == null ? null : user.trim();
    }

    public String getChat() {
        return chat;
    }

    public void setChat(String chat) {
        this.chat = chat == null ? null : chat.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src == null ? null : src.trim();
    }
}