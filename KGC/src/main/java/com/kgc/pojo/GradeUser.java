package com.kgc.pojo;

public class GradeUser {
    private Integer guid;

    private Integer gradeid;

    private Integer userid;
    /*根据登录id查询属于哪个班级 然后在查询作业*/
    private  Grade grade;
    private  User user;

    @Override
    public String toString() {
        return "GradeUser{" +
                "guid=" + guid +
                ", gradeid=" + gradeid +
                ", userid=" + userid +
                ", grade=" + grade +
                ", user=" + user +
                '}';
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getGuid() {
        return guid;
    }

    public void setGuid(Integer guid) {
        this.guid = guid;
    }

    public Integer getGradeid() {
        return gradeid;
    }

    public void setGradeid(Integer gradeid) {
        this.gradeid = gradeid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}