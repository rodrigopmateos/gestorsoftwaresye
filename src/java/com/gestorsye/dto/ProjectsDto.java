/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dto;

public class ProjectsDto {

  private int idProject;
  private int idUser;
  private String projectName;
  private String description;
  private int progress;
  private String status;
  private String fecha;

    public ProjectsDto() {
    }

    public ProjectsDto(int idProject, int idUser, String project_name, String fecha,String description, int progress, String status) {
        this.idProject = idProject;
        this.idUser = idUser;
        this.projectName = project_name;
        this.fecha=fecha;
        this.description = description;
        this.progress = progress;
        this.status = status;
    }

    public ProjectsDto(String project_name, String description, String fecha) {
        this.projectName = project_name;
        this.description = description;
        this.fecha = fecha;
    }
    public ProjectsDto(int idProject,String projectName, String description, int progress, String status){
        this.idProject=idProject;
        this.projectName=projectName;
        this.description=description;
        this.progress=progress;
        this.status=status;
    }
    

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getIdProject() {
        return idProject;
    }

    public void setIdProject(int idProject) {
        this.idProject = idProject;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
  
  
    
}
