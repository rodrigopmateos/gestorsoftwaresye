/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.dto.UsersDto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ParticipantsDao {

    private static final String SQL_INSERT = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    private static final String SQL_DELETE = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    private static final String SQL_SELECT = "SELECT id_user,id_profile, name, email, area, user FROM collaborators c inner join users u on c.Cid_user = u.id_user";
    

    private static final Conexion con = Conexion.abrirConexion();

    public boolean add(int idProject, int partipant ) {
        
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            //ps.setS(1,"null" );
            ps.setInt(1, idProject);
            ps.setInt(2, partipant );            

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
    
    public UsersDto selectUsersByProject(int idProject){
        UsersDto dto = null;
        PreparedStatement ps;
        ResultSet rs;

        try {
            ps = con.getConexion().prepareStatement(SQL_SELECT);
            ps.setInt(1, (int) idProject);
            rs = ps.executeQuery();

            while (rs.next()) {
                dto = new UsersDto(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8));
            }

        } catch (SQLException ex) {

            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return dto;
    }

}
