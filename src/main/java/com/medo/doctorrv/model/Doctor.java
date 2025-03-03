package com.medo.doctorrv.model;


public class Doctor extends  User
{
    private int id;
    private String specialisation;

    public Doctor(String fullame, String email, String password, int numberPhone, Role role, String specialisation) {
        super(fullame, email, password, numberPhone, role);
        this.specialisation = specialisation;
    }

    public Doctor(int id, String fullame, String email, String password, int numberPhone, int id1, String specialisation) {
        super(id, fullame, email, password, numberPhone);
        this.id = id1;
        this.specialisation = specialisation;
    }

    public Doctor(String fullame, String email, String password, int numberPhone, Role role) {
        super(fullame, email, password, numberPhone, role);
    }

    public Doctor(int id, String specialisation) {
        this.id = id;
        this.specialisation = specialisation;
    }

    public Doctor() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpecialisation() {
        return specialisation;
    }

    public void setSpecialisation(String specialisation) {
        this.specialisation = specialisation;
    }
}
