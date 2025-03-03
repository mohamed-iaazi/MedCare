package com.medo.doctorrv.service;

import com.medo.doctorrv.dao.LoginDao;

public class LoginService {

    public static String login(String email, String password) {
     
        if (email == null || password == null) {
            return null;
        } else if (email.length()<4 || password.length()<8 || email.endsWith(".") ) {
            return null;
        }

        else {
            return LoginDao.getUserByUsernameAndPassword(email, password);

        }

    }

}
