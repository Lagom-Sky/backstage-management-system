package com.web.entity.po;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class StudentPO {
    private Integer id;

    private String sno;

    private String name;

    private String sex;

    private String hometown;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date enroldate;

    private String department;

    private String email;

    private String tel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno == null ? null : sno.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown == null ? null : hometown.trim();
    }

    public Date getEnroldate() {
        return enroldate;
    }

    public void setEnroldate(Date enroldate) {
        this.enroldate = enroldate;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    @Override
    public String toString() {
        return "StudentPO{" +
                "id=" + id +
                ", sno='" + sno + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", hometown='" + hometown + '\'' +
                ", enroldate=" + enroldate +
                ", department='" + department + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                '}';
    }
}