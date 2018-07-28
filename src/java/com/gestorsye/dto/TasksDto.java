/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dto;

public class TasksDto {

    private int idTask;
    private int idProject;
    private int nameCreator;
    private int userAssigned;
    private String title;
    private String description;
    private String typeTask;
    private String priority;
    private String deliveryDate;
    private String estimatedTime;
    private String statusTask;
    private int status;

    public TasksDto(int idTask, int idProject, int nameCreator, int userAssigned, String title, String description, String typeTask, String priority, String deliveryDate, String estimatedTime, String statusTask, int status) {
        this.idTask = idTask;
        this.idProject = idProject;
        this.nameCreator = nameCreator;
        this.userAssigned = userAssigned;
        this.title = title;
        this.description = description;
        this.typeTask = typeTask;
        this.priority = priority;
        this.deliveryDate = deliveryDate;
        this.estimatedTime = estimatedTime;
        this.statusTask = statusTask;
        this.status = status;
    }

    public TasksDto() {
    }

    public int getIdTask() {
        return idTask;
    }

    public void setIdTask(int idTask) {
        this.idTask = idTask;
    }

    public int getIdProject() {
        return idProject;
    }

    public void setIdProject(int idProject) {
        this.idProject = idProject;
    }

    public int getNameCreator() {
        return nameCreator;
    }

    public void setNameCreator(int nameCreator) {
        this.nameCreator = nameCreator;
    }

    public int getUserAssigned() {
        return userAssigned;
    }

    public void setUserAssigned(int UserAssigned) {
        this.userAssigned = UserAssigned;
    }

   


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTypeTask() {
        return typeTask;
    }

    public void setTypeTask(String typeTask) {
        this.typeTask = typeTask;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getEstimatedTime() {
        return estimatedTime;
    }

    public void setEstimatedTime(String estimatedTime) {
        this.estimatedTime = estimatedTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getStatusTask() {
        return statusTask;
    }

    public void setStatusTask(String statusTask) {
        this.statusTask = statusTask;
    }


}
