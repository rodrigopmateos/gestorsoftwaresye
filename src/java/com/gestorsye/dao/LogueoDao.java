/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.ProfilesDto;
import com.gestorsye.dto.UsersDto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jose
 */
public class LogueoDao {

    private static final String QUERY = "SELECT user,pass FROM users";
    private static final String READUSER = "SELECT * FROM users WHERE user = ? and pass = ?";
    private static final Conexion con = Conexion.abrirConexion();

    public boolean logueo(String user, String pass) {
        ProfilesDto dto = null;
        ResultSet rs;
        boolean logueo = true;
        String bdUser = "";
        String bdPass = "";
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(QUERY);
            rs = ps.executeQuery();

            while (rs.next()) {
                bdUser = rs.getString(1);
                bdPass = rs.getString(2);
            }

        } catch (SQLException ex) {
            Logger.getLogger(LogueoDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (bdUser.equals(user) && bdPass.equals(pass)) {
            logueo = true;
        } else {
            logueo = false;
        }
        return logueo;
    }

    public UsersDto getUser(String user, String pass) {
              UsersDto dto = null;
        try {
      
            ResultSet rs;            
            PreparedStatement ps;
            
            ps = con.getConexion().prepareStatement(READUSER);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            while (rs.next()) {
            dto = new UsersDto();
            dto.setIdUser(rs.getInt(1));
            dto.setIdProfile(rs.getInt(2));
            dto.setName(rs.getString(3));
            dto.setEmail(rs.getString(4));
            dto.setArea(rs.getString(5));
            dto.setUser(rs.getString(6));
            dto.setPass(rs.getString(7));
            dto.setStatus(rs.getInt(8));
            }           
           
        } catch (SQLException ex) {
            Logger.getLogger(LogueoDao.class.getName()).log(Level.SEVERE, null, ex);
        }   
         return dto;
    }

}
