package com.kgc.pojo;

import java.util.Date;

public class ShouCang {
    private Integer id;

    private Integer userid;

    private Integer tieziid;

    private Integer sc;

    private Date time;

    private Integer sctype;

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