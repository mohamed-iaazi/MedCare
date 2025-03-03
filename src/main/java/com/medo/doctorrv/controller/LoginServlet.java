package com.medo.doctorrv.controller;

import com.medo.doctorrv.service.LoginService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (LoginService.login(username,password)!=null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", username);
            session.setAttribute("role", LoginService.login(username,password));
            resp.setStatus(1);
            resp.sendRedirect(req.getContextPath()+"/");
        }
        else {
            resp.setStatus(0);
            resp.sendRedirect(req.getContextPath()+"/Login.jsp");

        }

    }


}

