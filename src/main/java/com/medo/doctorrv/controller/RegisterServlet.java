package com.medo.doctorrv.controller;

import com.medo.doctorrv.dao.RegisterDao;
import com.medo.doctorrv.model.Doctor;
import com.medo.doctorrv.model.Patient;
import com.medo.doctorrv.model.Role;
import com.medo.doctorrv.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RegisterDao registerDao=new RegisterDao();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        int numberPhone = Integer.parseInt(req.getParameter("numberPhone"));
        String role = req.getParameter("role");

        if (role.equals("Doctor")) {
            String specialization = req.getParameter("specialisation");
            User doctor = new Doctor( username, password, email, numberPhone, new Role(role),specialization) ;
            registerDao.CreateAccount(doctor ,specialization );
        }
        else {

            User patient=new Patient(username,password,email,numberPhone,new Role(role));
            registerDao.CreateAccount(patient , null  );



        }






    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
