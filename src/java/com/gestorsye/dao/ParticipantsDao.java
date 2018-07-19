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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ParticipantsDao {

    private static final String SQL_INSERT = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    private static final String SQL_DELETE = "INSERT INTO collaborators (Cid_project, Cid_user) VALUES(?,?)";
    private static final String SQL_SELECT = "SELECT id_user,id_profile, name, email, area, user FROM collaborators c inner join users u on c.Cid_user = u.id_user where Cid_project = ?";

    private static final Conexion con = Conexion.abrirConexion();

    public boolean add(int idProject, int partipant) {

        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            ps.setInt(1, idProject);
            ps.setInt(2, partipant);

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

    public List<UsersDto> selectUsersByProject(int idProject) {
        List<UsersDto> usuarios = new ArrayList<>();
        UsersDto dto = new UsersDto();
        PreparedStatement ps;
        ResultSet rs;

        try {
            ps = con.getConexion().prepareStatement(SQL_SELECT);
            ps.setInt(1,  idProject);
            rs = ps.executeQuery();

            while (rs.next()) {
                dto.setId_user(rs.getInt(1));
                dto.setId_profile(rs.getInt(2));
                dto.setName(rs.getString(3));
                dto.setEmail(rs.getString(4));
                dto.setArea(rs.getString(5));
                dto.setUser(rs.getString(6));
                
                usuarios.add(dto);
            }

        } catch (SQLException ex) {

            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return usuarios;
    }

}
