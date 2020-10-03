package com.kgc.pojo;

public class LunTanHuiTie {
    private int id;
    private int count;
    private UserInfo userInfo;

    @Override
    public String toString() {
        return "LunTanHuiTie{" +
                "id=" + id +
                ", count=" + count +
                ", userInfo=" + userInfo +
                '}';
    }

    public LunTanHuiTie(int id, int count, UserInfo userInfo) {
        this.id = id;
        this.count = count;
        this.userInfo = userInfo;
    }

    public LunTanHuiTie() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}
