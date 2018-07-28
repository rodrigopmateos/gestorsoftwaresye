/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.dto.ProfilesDto;
import com.gestorsye.conexion.Conexion;
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
public class ProfilesDao implements InterfaceDao<ProfilesDto>{
    
    private static final String SQL_INSERT = "INSERT INTO profiles (id_profile, name, status) VALUES(?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM profiles WHERE id_profile= ?";
    private static final String SQL_UPDATE = "UPDATE profiles SET = ? WHERE id_profile = ?";
    private static final String SQL_READ = "SELECT * FROM profiles WHERE id_profile = ?";
    private static final String SQL_READALL = "SELECT * FROM profiles";
    
        private static final Conexion con = Conexion.abrirConexion();
    public ProfilesDao(){
        
    }

    @Override
    public boolean create(ProfilesDto dto) {
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            //ps.setS(1,"null" );
            ps.setInt(1, dto.getIdProfile() );
            ps.setString(2, dto.getName()); 
            ps.setInt(3, dto.getStatus());

            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProfilesDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return false;
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
            Logger.getLogger(ProfilesDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return delete;
    }

    @Override
    public boolean update(ProfilesDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProfilesDto select(Object key) {
        ProfilesDto dto=null;
        PreparedStatement ps;
        ResultSet rs;
           
        try {           
            ps = con.getConexion().prepareStatement(SQL_READ); 
            ps.setInt(1, (int)key);
            rs=ps.executeQuery();  
            
            while(rs.next()){
            dto=new ProfilesDto(rs.getInt(1),rs.getString(2),  rs.getInt(3));    
            }  
            
        } catch (SQLException ex) {
            Logger.getLogger(ProfilesDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return dto;

    }

    @Override
    public List<ProfilesDto> selectAll() {
        PreparedStatement ps;
        ResultSet rs;

            List<ProfilesDto> projects =new ArrayList();
        try {           

            ps = con.getConexion().prepareStatement(SQL_READALL);                  
            rs=ps.executeQuery();            
            while(rs.next()){
            
             projects.add(new ProfilesDto(rs.getInt(1),rs.getString(2),  rs.getInt(3)));    
                   
            }
            return projects;
        } catch (SQLException ex) {
            Logger.getLogger(ProfilesDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return projects;

    }
    
}
