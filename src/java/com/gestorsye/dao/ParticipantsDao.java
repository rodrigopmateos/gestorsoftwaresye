/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.ProjectsDto;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ParticipantsDao {

    private static final String SQL_INSERT = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    private static final String SQL_DELETE = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    

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

}
