package com.medo.doctorrv.model;

public abstract class User {
    private  int id;
    private String username;
    private String email;
    private String password;
    private int numberPhone;
    private  Role role;


    public User(String fullame, String email, String password, int numberPhone, Role role) {
        this.username = fullame;
        this.email = email;
        this.password = password;
        this.numberPhone = numberPhone;
        this.role = role;
    }

    public User(int id, String fullame, String email, String password, int numberPhone) {
        this.id = id;
        this.username = fullame;
        this.email = email;
        this.password = password;
        this.numberPhone = numberPhone;
    }

    public User() {
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(int numberPhone) {
        this.numberPhone = numberPhone;
    }
}
