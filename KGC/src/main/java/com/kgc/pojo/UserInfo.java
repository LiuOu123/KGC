package com.kgc.pojo;

import java.util.Date;

public class UserInfo {
    private Integer uid;

    private Integer accid;

    private String nickname;

    private Integer age;

    private String sex;

    private String address;

    private String email;

    private String phone;

    private String touxiang;

    private String qianming;

    private Date modification;

    private Integer utype;

    private Integer score;

    @Override
    public String toString() {
        return "UserInfo{" +
                "uid=" + uid +
                ", accid=" + accid +
                ", nickname='" + nickname + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", touxiang='" + touxiang + '\'' +
                ", qianming='" + qianming + '\'' +
                ", modification=" + modification +
                ", utype=" + utype +
                ", score=" + score +
                '}';
    }

    public UserInfo() {
    }


    public UserInfo(Integer uid, Integer utype) {
        this.uid = uid;
        this.utype = utype;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getAccid() {
        return accid;
    }

    public void setAccid(Integer accid) {
        this.accid = accid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getTouxiang() {
        return touxiang;
    }

    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang == null ? null : touxiang.trim();
    }

    public String getQianming() {
        return qianming;
    }

    public void setQianming(String qianming) {
        this.qianming = qianming == null ? null : qianming.trim();
    }

    public Date getModification() {
        return modification;
    }

    public void setModification(Date modification) {
        this.modification = modification;
    }

    public Integer getUtype() {
        return utype;
    }

    public void setUtype(Integer utype) {
        this.utype = utype;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
}