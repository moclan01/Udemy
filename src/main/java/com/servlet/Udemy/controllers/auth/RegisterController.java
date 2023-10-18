package com.servlet.Udemy.controllers.auth;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servlet.Udemy.constants.LoginType;
import com.servlet.Udemy.models.UserModel;
import com.servlet.Udemy.services.UserService;
import com.servlet.Udemy.utils.StringUtil;

@WebServlet("/auth/register")
public class RegisterController extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        String firstName = req.getParameter("firstName").trim();
        String lastName = req.getParameter("lastName").trim();
        String phone = req.getParameter("phone").trim();

        //Hash password
        String hashedPassword = StringUtil.bcrypt(password);

        UserModel userModel = new UserModel(email, hashedPassword, firstName, lastName, phone, null, false, LoginType.NORMAL);

        if (userService.isValidUser(userModel)) {
            userService.insert(userModel);
            UserModel loginUser = userService.findLast();
            session.setAttribute("loginUser", loginUser);
            resp.sendRedirect("/login");
        } else {
            session.setAttribute("registerError", "Tên đăng nhập đã tồn tại");
            resp.sendRedirect("/register");
        }
    }

}
