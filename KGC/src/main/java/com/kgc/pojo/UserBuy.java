package com.kgc.pojo;

public class UserBuy {
    private Integer id;

    private String username;

    private String biao;

    private Integer lei;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getBiao() {
        return biao;
    }

    public void setBiao(String biao) {
        this.biao = biao == null ? null : biao.trim();
    }

    public Integer getLei() {
        return lei;
    }

    public void setLei(Integer lei) {
        this.lei = lei;
    }
}