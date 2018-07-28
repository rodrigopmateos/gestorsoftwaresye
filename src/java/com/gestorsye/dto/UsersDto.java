
package com.gestorsye.dto;
public class UsersDto {
    
          private int idUser;
          private int idProfile;
          private String name;
          private String email;
          private String area;
          private String user;
          private String pass;
          private int status;
          
    public UsersDto() {
    }

    public UsersDto(int idUser, int idProfile, String name, String email, String area, String user, String pass, int status) {
        this.idUser = idUser;
        this.idProfile = idProfile;
        this.name = name;
        this.email = email;
        this.area = area;
        this.user = user;
        this.pass = pass;
        this.status = status;
    }

    public UsersDto(int idProfile, String name, String email, String area, String user, String pass, int status) {
        this.idProfile = idProfile;
        this.name = name;
        this.email = email;
        this.area = area;
        this.user = user;
        this.pass = pass;
        this.status = status;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdProfile() {
        return idProfile;
    }

    public void setIdProfile(int idProfile) {
        this.idProfile = idProfile;
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
