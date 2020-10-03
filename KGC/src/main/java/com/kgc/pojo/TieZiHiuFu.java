package com.kgc.pojo;

import java.util.Date;

public class TieZiHiuFu {
    private Integer id;

    private Integer luntanid;

    private Integer userid;

    private String neirong;

    private Date time;

    private Integer tiezitype;

    private UserInfo userInfo;

    @Override
    public String toString() {
        return "TieZiHiuFu{" +
                "id=" + id +
                ", luntanid=" + luntanid +
                ", userid=" + userid +
                ", neirong='" + neirong + '\'' +
                ", time=" + time +
                ", tiezitype=" + tiezitype +
                ", userInfo=" + userInfo +
                '}';
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLuntanid() {
        return luntanid;
    }

    public void setLuntanid(Integer luntanid) {
        this.luntanid = luntanid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getNeirong() {
        return neirong;
    }

    public void setNeirong(String neirong) {
        this.neirong = neirong == null ? null : neirong.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getTiezitype() {
        return tiezitype;
    }

    public void setTiezitype(Integer tiezitype) {
        this.tiezitype = tiezitype;
    }
}