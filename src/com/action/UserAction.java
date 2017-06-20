package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.po.User;
import com.service.UserService;

/**
 * Created by wangz on 2017/6/18.
 */
public class UserAction extends ActionSupport{
    private UserService userService;
    private String username;
    private String password;
    private String rpassword;
    private String email;

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
    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String getRpassword() {
        return rpassword;
    }

    public void setRpassword(String rpassword) {
        this.rpassword = rpassword;
    }

    public String register() throws Exception{
        User user = new User(username, password, email, rpassword);
        userService.register(user);
        return "success";
    }
    public String signin() throws Exception{
        User user = new User(username, password, email, rpassword);
        boolean isSucceed = userService.signin(user);
        if(isSucceed){
            ActionContext.getContext().getSession().put("username", username);
            System.out.println("user "+username+" signed in");
            return "success";
        }
        System.out.println("user "+username+" failed to sign in");
        return "error";
    }
    public String forget()  throws Exception{
        return "success";
    }
}
