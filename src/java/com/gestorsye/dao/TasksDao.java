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

     private static final String SQL_INSERT = "INSERT INTO tasks (name_task_creator,name_user_assigned, title, description, name_type_task, name_priority, delivery_date, estimated_time, status_task, id_project) VALUES(?,?,?,?,?,?,?,?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM tasks WHERE id_task= ?";
    private static final String SQL_UPDATE = "UPDATE tasks SET status_task= ? WHERE id_task=?";
    private static final String SQL_UPDATE2 = "UPDATE tasks SET worked_time= ? WHERE id_task=?";
    private static final String SQL_READ = "SELECT * FROM tasks WHERE name_user_assigned = ?";
    private static final String SQL_READALL = "SELECT * FROM tasks";
    private static final String SQL_READP="SELECT * FROM  tasks WHERE id_project = ? ";
    private static final String SQL_READUS = "SELECT *  FROM tasks WHERE name_user_assigned = ? and status_task = ? ";
    
    private static final Conexion con = Conexion.abrirConexion();
    
    @Override
    public boolean create(TasksDto dto) {
        boolean create=true;
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            ps.setInt(1, dto.getNameCreator());
            ps.setInt(2,dto.getUserAssigned() );
            ps.setString(3, dto.getTitle());
            ps.setString(4, dto.getDescription());
            ps.setString(5, dto.getTypeTask());
            ps.setString(6, dto.getPriority());
            ps.setString(7, dto.getDeliveryDate());
            ps.setString(8, dto.getEstimatedTime());
            ps.setString(9, dto.getStatusTask());
            ps.setInt(10,dto.getIdProject() );
            ps.executeUpdate();
           
        } catch (SQLException ex) {
            create=false;
            Logger.getLogger(TasksDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return create;        
    }

    @Override
    public boolean delete(Object key) {
         boolean delete= true;
        try{
        PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_DELETE);
            ps.setInt(1, (int)key);
            
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            delete= false;
            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return delete;
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
            
                TasksDto dto= new TasksDto();
                        
                dto.setIdTask(rs.getInt(1));
                dto.setIdProject(rs.getInt(2));
                dto.setNameCreator(rs.getInt(3));
                dto.setUserAssigned(rs.getInt(4));
                dto.setTitle(rs.getString(5));
                dto.setDescription(rs.getString(6));
                dto.setTypeTask(rs.getString(7));
                dto.setPriority(rs.getString(8));
                dto.setDeliveryDate(rs.getString(9));
                dto.setEstimatedTime(rs.getString(10));
                dto.setWorkedTime(rs.getString(11));
                dto.setStatusTask(rs.getString(12));
                dto.setStatus(rs.getInt(13));
                        
             tasks.add(dto);
         
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
        boolean update=false;            
            PreparedStatement ps;
        try {
            ps = con.getConexion().prepareStatement(SQL_UPDATE2);
            
            ps.setString(1, dto.getWorkedTime());
            ps.setInt(2, dto.getIdTask());          
            
            ps.executeUpdate();
            
            update=true;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        }       
        finally{
            con.cerrarConexion();
        }
       return update;
    }
    
    public boolean changeStatus(Object key, String opcion)
    {
        boolean update= true;
        try{
        PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_UPDATE);            
            ps.setString(1, opcion);
            ps.setInt(2, (int)key);
            
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            update= false;
            Logger.getLogger(TasksDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return update;            
    }
    
    public List<TasksDto> selectByProject(Object key) {
       PreparedStatement ps;
        ResultSet rs;
        
            List<TasksDto> tasks =new ArrayList();
        try {           
            ps = con.getConexion().prepareStatement(SQL_READP);    
            ps.setInt(1,(int) key);
            rs=ps.executeQuery();            
            while(rs.next()){
            
                TasksDto dto = new TasksDto();
                
                dto.setIdTask(rs.getInt(1));
                dto.setIdProject(rs.getInt(2));
                dto.setNameCreator(rs.getInt(3));
                dto.setUserAssigned(rs.getInt(4));
                dto.setTitle(rs.getString(5));
                dto.setDescription(rs.getString(6));
                dto.setTypeTask(rs.getString(7));
                dto.setPriority(rs.getString(8));
                dto.setDeliveryDate(rs.getString(9));
                dto.setEstimatedTime(rs.getString(10));
                dto.setWorkedTime(rs.getString(11));
                dto.setStatusTask(rs.getString(12));
                dto.setStatus(rs.getInt(13));
                            
             tasks.add(dto);
         
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
    public List<TasksDto> selectByEstatus(int id, String status) {
       PreparedStatement ps;
        ResultSet rs;
            
            List<TasksDto> tasks =new ArrayList();
        try {           
            ps = con.getConexion().prepareStatement(SQL_READUS);    
            
            ps.setInt(1,id);
            ps.setString(2,status);
            
            
            rs=ps.executeQuery();            
            while(rs.next()){
                TasksDto dto = new TasksDto();
                
           dto.setIdTask(rs.getInt(1));
                dto.setIdProject(rs.getInt(2));
                dto.setNameCreator(rs.getInt(3));
                dto.setUserAssigned(rs.getInt(4));
                dto.setTitle(rs.getString(5));
                dto.setDescription(rs.getString(6));
                dto.setTypeTask(rs.getString(7));
                dto.setPriority(rs.getString(8));
                dto.setDeliveryDate(rs.getString(9));
                dto.setEstimatedTime(rs.getString(10));
                dto.setWorkedTime(rs.getString(11));
                dto.setStatusTask(rs.getString(12));
                dto.setStatus(rs.getInt(13));
                        
             tasks.add(dto);
         
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
    
    public List<TasksDto> selectAllByUser(int id) {
       PreparedStatement ps;
        ResultSet rs;
            
            List<TasksDto> tasks =new ArrayList();
        try {           
            ps = con.getConexion().prepareStatement(SQL_READ);    
            
            ps.setInt(1,id);           
            
            rs=ps.executeQuery();            
            while(rs.next()){
                TasksDto dto = new TasksDto();
                
           dto.setIdTask(rs.getInt(1));
                dto.setIdProject(rs.getInt(2));
                dto.setNameCreator(rs.getInt(3));
                dto.setUserAssigned(rs.getInt(4));
                dto.setTitle(rs.getString(5));
                dto.setDescription(rs.getString(6));
                dto.setTypeTask(rs.getString(7));
                dto.setPriority(rs.getString(8));
                dto.setDeliveryDate(rs.getString(9));
                dto.setEstimatedTime(rs.getString(10));
                dto.setWorkedTime(rs.getString(11));
                dto.setStatusTask(rs.getString(12));
                dto.setStatus(rs.getInt(13));
                        
             tasks.add(dto);
         
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
    
    
        
}
