/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.dto.TasksDto;
import java.util.List;

/**
 *
 * @author jose
 */
public class TasksDao implements InterfaceDao<TasksDto> {

     private static final String SQL_INSERT = "INSERT INTO PERSONA (id, nombre, apellido) VALUES(?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM PERSONA WHERE ID= ?";
    private static final String SQL_UPDATE = "UPDATE PERSONA SET = ? WHERE ID = ?";
    private static final String SQL_READ = "SELECT * FROM PERSONA WHERE ID = ?";
    private static final String SQL_READALL = "SELECT * FROM PERSONA";
    
    @Override
    public boolean create(TasksDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



    @Override
    public TasksDto select(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<TasksDto> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(TasksDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
