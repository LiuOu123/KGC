package com.kgc.pojo;

import java.util.Date;

public class userimg {
    private Integer userinfoImgid;

    private Integer userinfoUserid;

    private String userinfoImgname;

    private Date userinfoImgdate;

    public Integer getUserinfoImgid() {
        return userinfoImgid;
    }

    public void setUserinfoImgid(Integer userinfoImgid) {
        this.userinfoImgid = userinfoImgid;
    }

    public Integer getUserinfoUserid() {
        return userinfoUserid;
    }

    public void setUserinfoUserid(Integer userinfoUserid) {
        this.userinfoUserid = userinfoUserid;
    }

    public String getUserinfoImgname() {
        return userinfoImgname;
    }

    public void setUserinfoImgname(String userinfoImgname) {
        this.userinfoImgname = userinfoImgname == null ? null : userinfoImgname.trim();
    }

    public Date getUserinfoImgdate() {
        return userinfoImgdate;
    }

    public void setUserinfoImgdate(Date userinfoImgdate) {
        this.userinfoImgdate = userinfoImgdate;
    }
}