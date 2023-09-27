package com.servlet.Udemy.services;

import java.util.List;

import com.servlet.Udemy.DAO.UserDAO;
import com.servlet.Udemy.models.UserModel;

public class UserService {

    private UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO();
    }

    public List<UserModel> findAll() {
        return userDAO.findAll();
    }
}
