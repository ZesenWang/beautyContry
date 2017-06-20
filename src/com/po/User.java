package com.po;

/**
 * Created by wangz on 2017/6/18.
 */
public class User {

    private int id;
    private String username;
    private String password;
    private String email;
    private String rpassword;

    public void setId(Integer id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRpassword() {
        return rpassword;
    }

    public void setRpassword(String rpassword) {
        this.rpassword = rpassword;
    }

    public User(String username, String password, String email, String rpassword) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.rpassword = rpassword;
    }
    //如果没有默认的构造函数，hibernate会报错
    public User() {}
}
