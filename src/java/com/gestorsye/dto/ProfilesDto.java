
package com.gestorsye.dto;
public class ProfilesDto {
    
          private int idProfile;
          private String name;
          private int status;
          
    public ProfilesDto() {
    }

    public ProfilesDto(int idProfile, String name, int status) {
        this.idProfile = idProfile;
        this.name = name;
        this.status = status;
    }

    public ProfilesDto(String name, String email, String area, String user, String pass, int status) {
        this.name = name;
        this.status = status;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    } 
}
