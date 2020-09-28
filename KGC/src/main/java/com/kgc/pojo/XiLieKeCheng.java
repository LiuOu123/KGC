package com.kgc.pojo;

public class XiLieKeCheng {
    private Integer id;

    private String name;

    private Integer kenum;

    private Integer qi;

    private Integer people;

    private String price;

    private String jie;

    private String xiang;

    private String tname;

    private String tchat;

    private String lei;

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

    public Integer getKenum() {
        return kenum;
    }

    public void setKenum(Integer kenum) {
        this.kenum = kenum;
    }

    public Integer getQi() {
        return qi;
    }

    public void setQi(Integer qi) {
        this.qi = qi;
    }

    public Integer getPeople() {
        return people;
    }

    public void setPeople(Integer people) {
        this.people = people;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getJie() {
        return jie;
    }

    public void setJie(String jie) {
        this.jie = jie == null ? null : jie.trim();
    }

    public String getXiang() {
        return xiang;
    }

    public void setXiang(String xiang) {
        this.xiang = xiang == null ? null : xiang.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getTchat() {
        return tchat;
    }

    public void setTchat(String tchat) {
        this.tchat = tchat == null ? null : tchat.trim();
    }

    public String getLei() {
        return lei;
    }

    public void setLei(String lei) {
        this.lei = lei == null ? null : lei.trim();
    }
}