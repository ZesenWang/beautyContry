package com.service;

import com.dao.UserDAO;
import com.po.User;

import java.util.List;

/**
 * Created by wangz on 2017/6/18.
 */
public class UserService {
    private UserDAO userDAO;

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public String register(User user) {
        userDAO.register(user);
        return null;
    }

    public boolean signin(User user) {
        String hql = "from User where username = '" + user.getUsername() + "' and password = '" + user.getPassword() + "'";
        List<User> list = userDAO.getData(hql);
        if(list.size() > 0)
            return true;
        else
            return false;
    }
}
