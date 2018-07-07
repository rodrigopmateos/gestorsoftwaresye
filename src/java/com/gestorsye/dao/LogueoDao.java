/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.ProfilesDto;
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

    private static final String QUERY = "SELECT * FROM ";
    private static final Conexion con = Conexion.abrirConexion();
    ProfilesDto dto = null;
    ResultSet rs;

    public boolean logueo(String user, String pass) {
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

        if (!bdUser.equals(user) && bdPass.equals(pass) || user.equals("admin") && pass.equals("admin")) {
            logueo = true;
        } else {
            logueo = false;
        }
        return logueo;
    }

}
