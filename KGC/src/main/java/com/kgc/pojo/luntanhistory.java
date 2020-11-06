package com.kgc.pojo;

import java.util.Date;

public class luntanhistory {
    private Integer hoistroyId;

    private Integer hoistroyLuntanid;

    private Integer hoistroyUserid;

    private Date hoistroyDate;
    private  LunTan luntan;

    public LunTan getLuntan() {
        return luntan;
    }

    public void setLuntan(LunTan luntan) {
        this.luntan = luntan;
    }

    public Integer getHoistroyId() {
        return hoistroyId;
    }

    public void setHoistroyId(Integer hoistroyId) {
        this.hoistroyId = hoistroyId;
    }

    public Integer getHoistroyLuntanid() {
        return hoistroyLuntanid;
    }

    public void setHoistroyLuntanid(Integer hoistroyLuntanid) {
        this.hoistroyLuntanid = hoistroyLuntanid;
    }

    public Integer getHoistroyUserid() {
        return hoistroyUserid;
    }

    public void setHoistroyUserid(Integer hoistroyUserid) {
        this.hoistroyUserid = hoistroyUserid;
    }

    public Date getHoistroyDate() {
        return hoistroyDate;
    }

    public void setHoistroyDate(Date hoistroyDate) {
        this.hoistroyDate = hoistroyDate;
    }
}