/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dto;

public class TasksDto {

  
          private int id_task;
          private int id_project;
          private int id_userCreate;
          private int id_userAssigned;
          private String title;
          private String description;
          private String typeTask;
          private String priority;
          private String deliveryDate;
          private String estimatedTime;
          private int status;

    public int getId_task() {
        return id_task;
    }

    public void setId_task(int id_task) {
        this.id_task = id_task;
    }

    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public int getId_userCreate() {
        return id_userCreate;
    }

    public void setId_userCreate(int id_userCreate) {
        this.id_userCreate = id_userCreate;
    }

    public int getId_userAssigned() {
        return id_userAssigned;
    }

    public void setId_userAssigned(int id_userAssigned) {
        this.id_userAssigned = id_userAssigned;
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
          
          
          
}
