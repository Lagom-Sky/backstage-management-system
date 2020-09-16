package com.web.entity.vo;


public class LoginVO {

    private String userName;

    private String password;

    private String UserType;

    private String remember = "false";

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserType() {
        return UserType;
    }

    public void setUserType(String userType) {
        UserType = userType;
    }

    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }

    public LoginVO(String userName, String password, String userType, String remember) {
        this.userName = userName;
        this.password = password;
        UserType = userType;
        this.remember = remember;
    }

    public LoginVO() {
    }

    @Override
    public String toString() {
        return "LoginVO{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", UserType='" + UserType + '\'' +
                ", remember='" + remember + '\'' +
                '}';
    }
}
