/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.TasksDto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jose
 */
public class TasksDao implements InterfaceDao<TasksDto> {

     private static final String SQL_INSERT = "INSERT INTO tasks (id, nombre, apellido) VALUES(?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM tasks WHERE id_task= ?";
    private static final String SQL_UPDATE = "UPDATE tasks SET = ? WHERE id_task=?";
    private static final String SQL_READ = "SELECT * FROM tasks WHERE id_task = ?";
    private static final String SQL_READALL = "SELECT * FROM tasks";
    private static final Conexion con = Conexion.abrirConexion();
    
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
       PreparedStatement ps;
        ResultSet rs;

            List<TasksDto> tasks =new ArrayList();
        try {           

            ps = con.getConexion().prepareStatement(SQL_READALL);                  
            rs=ps.executeQuery();            
            while(rs.next()){
            Object o1=rs.getObject(1);
            Object o2=rs.getObject(2);
            Object o3=rs.getObject(3);
            Object o4=rs.getObject(4);
            Object o5=rs.getObject(5);
            Object o6=rs.getObject(6);
            Object o7=rs.getObject(7);
            Object o8=rs.getObject(8);
            Object o9=rs.getObject(9);
            Object o10=rs.getObject(10);
            Object o11=rs.getObject(11);     
            Object o12=rs.getObject(12);     
                        
             tasks.add(new TasksDto(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getInt(12)));
         
            }
            return tasks;
        } catch (SQLException ex) {
            Logger.getLogger(TasksDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return tasks;

    
    }

    @Override
    public boolean update(TasksDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
