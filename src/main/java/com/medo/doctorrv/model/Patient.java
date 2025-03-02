package com.medo.doctorrv.model;

import java.sql.Date;

public class Patient  extends User{
    private  int id;

    public Patient(int id,String fullame, String email, String password, int numberPhone) {
        super( id ,fullame, email, password, numberPhone);
        this.id = id;
    }

    public Patient(String fullame, String email, String password, int numberPhone ,Role role) {
        super(fullame, email, password, numberPhone , role);
    }

    public Patient() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
