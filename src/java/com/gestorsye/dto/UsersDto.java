
package com.gestorsye.dto;
public class UsersDto {
    
          private int id_user;
          private int id_profile;
          private String name;
          private String email;
          private String area;
          private String user;
          private String pass;
          private int status;
          
    public UsersDto() {
    }

    public UsersDto(int id_user, int id_profile, String name, String email, String area, String user, String pass, int status) {
        this.id_user = id_user;
        this.id_profile = id_profile;
        this.name = name;
        this.email = email;
        this.area = area;
        this.user = user;
        this.pass = pass;
        this.status = status;
    }

    public UsersDto(int id_profile, String name, String email, String area, String user, String pass, int status) {
        this.id_profile = id_profile;
        this.name = name;
        this.email = email;
        this.area = area;
        this.user = user;
        this.pass = pass;
        this.status = status;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_profile() {
        return id_profile;
    }

    public void setId_profile(int id_profile) {
        this.id_profile = id_profile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
          
          
          
    
}
