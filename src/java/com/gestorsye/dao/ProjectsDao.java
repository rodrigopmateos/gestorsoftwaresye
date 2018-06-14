/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jose
 */
public class ProjectsDao implements InterfaceDao<ProjectsDto>{
    
    private static final String SQL_INSERT = "INSERT INTO projects (id_user, project_name, created_date, description, progress, status) VALUES(?,?,?,?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM PERSONA WHERE ID= ?";
    private static final String SQL_UPDATE = "UPDATE PERSONA SET = ? WHERE ID = ?";
    private static final String SQL_READ = "SELECT * FROM PERSONA WHERE ID = ?";
    private static final String SQL_READALL = "SELECT * FROM projects";
    
        private static final Conexion con = Conexion.abrirConexion();
    public ProjectsDao(){
        
    }

    @Override
    public boolean create(ProjectsDto dto) {
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            //ps.setS(1,"null" );
            ps.setInt(1,1 );
            ps.setString(2, dto.getProject_name()); 
            ps.setString(3, dto.getFecha());
            ps.setString(4, dto.getDescription());
            ps.setInt(5,1 );
            ps.setInt(6,1);

            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean delete(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProjectsDto select(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProjectsDto> selectAll() {
        PreparedStatement ps;
        ResultSet rs;

            List<ProjectsDto> projects =new ArrayList();
        try {           

            ps = con.getConexion().prepareStatement(SQL_READALL);                  
            rs=ps.executeQuery();            
            while(rs.next()){
                
                   projects.add(new ProjectsDto(rs.getInt(1),rs.getInt(2),  rs.getString(3),rs.getString(4),  rs.getString(5), rs.getInt(6),  rs.getInt(7) ));    
                   
            }
            return projects;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return projects;

    }
    
}
