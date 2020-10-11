package com.kgc.pojo;

import java.util.Date;

public class ShouCang {
    private Integer id;

    private Integer userid;

    private Integer tieziid;

    private Integer sc;

    private Date time;

    private Integer sctype;

    private LunTan lunTan;

    public ShouCang() {
    }

    public ShouCang(Integer id, Integer sctype) {
        this.id = id;
        this.sctype = sctype;
    }

    @Override
    public String toString() {
        return "ShouCang{" +
                "id=" + id +
                ", userid=" + userid +
                ", tieziid=" + tieziid +
                ", sc=" + sc +
                ", time=" + time +
                ", sctype=" + sctype +
                ", lunTan=" + lunTan +
                '}';
    }

    public LunTan getLunTan() {
        return lunTan;
    }

    public void setLunTan(LunTan lunTan) {
        this.lunTan = lunTan;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getTieziid() {
        return tieziid;
    }

    public void setTieziid(Integer tieziid) {
        this.tieziid = tieziid;
    }

    public Integer getSc() {
        return sc;
    }

    public void setSc(Integer sc) {
        this.sc = sc;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getSctype() {
        return sctype;
    }

    public void setSctype(Integer sctype) {
        this.sctype = sctype;
    }
}