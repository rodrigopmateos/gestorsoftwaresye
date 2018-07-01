
package com.gestorsye.dto;
public class ProfilesDto {
    
          private int id_profile;
          private String name;
          private int status;
          
    public ProfilesDto() {
    }

    public ProfilesDto(int id_profile, String name, int status) {
        this.id_profile = id_profile;
        this.name = name;
        this.status = status;
    }

    public ProfilesDto(String name, String email, String area, String user, String pass, int status) {
        this.name = name;
        this.status = status;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    } 
}
