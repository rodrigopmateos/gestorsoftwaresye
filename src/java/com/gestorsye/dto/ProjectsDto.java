/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dto;

public class ProjectsDto {

  private int id_project;
  private int id_user;
  private String project_name;
  private String description;
  private int progress;
  private int status;
  private String fecha;

    public ProjectsDto() {
    }

    public ProjectsDto(int id_project, int id_user, String project_name, String fecha,String description, int progress, int status) {
        this.id_project = id_project;
        this.id_user = id_user;
        this.project_name = project_name;
        this.description = description;
        this.progress = progress;
        this.status = status;
    }

    public ProjectsDto(String project_name, String description, String fecha) {
        this.project_name = project_name;
        this.description = description;
        this.fecha = fecha;
    }
    

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getProgress() {
        return progress;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
  
  
    
}
