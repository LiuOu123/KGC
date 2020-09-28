package com.kgc.pojo;

import java.util.Date;

public class Releasee {
    private Integer rid;

    private Integer gradeid;

    private String reltitle;

    private String relnei;

    private String img;

    private Date reldate;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getGradeid() {
        return gradeid;
    }

    public void setGradeid(Integer gradeid) {
        this.gradeid = gradeid;
    }

    public String getReltitle() {
        return reltitle;
    }

    public void setReltitle(String reltitle) {
        this.reltitle = reltitle == null ? null : reltitle.trim();
    }

    public String getRelnei() {
        return relnei;
    }

    public void setRelnei(String relnei) {
        this.relnei = relnei == null ? null : relnei.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Date getReldate() {
        return reldate;
    }

    public void setReldate(Date reldate) {
        this.reldate = reldate;
    }
}