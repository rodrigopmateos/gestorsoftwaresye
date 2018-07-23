/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.conexion.Conexion;
import com.gestorsye.dto.UsersDto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsersDao implements InterfaceDao<UsersDto> {

    private static final String SQL_INSERT = "INSERT INTO users (id_profile, name, email, area, user, pass, status) VALUES(?,?,?,?,?,?,?)";
    //private static final String SQL_DELETE = " DELETE FROM users WHERE id_user= ?";
    private static final String SQL_DELETE = "UPDATE users SET status=0 WHERE id_user= ?";
    private static final String SQL_UPDATE = "UPDATE users SET id_profile= ?, name=?, email=?, area=?, user=?, pass=?, status=? WHERE id_user = ?";
    private static final String SQL_READ = "SELECT * FROM users WHERE id_user = ?";
    private static final String SQL_READALL = "SELECT * FROM users WHERE status=1";
    private static final String SQL_PARTICIPANTS = "SELECT id_user, name from users u LEFT JOIN collaborators c on u.id_user=c.Cid_user WHERE c.Cid_user is null";

    private static final Conexion con = Conexion.abrirConexion();

    public UsersDao() {

    }

    @Override
    public boolean create(UsersDto dto) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_INSERT);
            //ps.setS(1,"null" );
            ps.setInt(1, dto.getId_profile());
            ps.setString(2, dto.getName());
            ps.setString(3, dto.getEmail());
            ps.setString(4, dto.getArea());
            ps.setString(5, dto.getUser());
            ps.setString(6, dto.getPass());
            ps.setInt(7, dto.getStatus());

            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return false;

    }

    @Override
    public boolean delete(Object key) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        boolean delete = true;
        try {
            PreparedStatement ps;
            ps = con.getConexion().prepareStatement(SQL_DELETE);
            ps.setInt(1, (int) key);

            ps.executeUpdate();

        } catch (SQLException ex) {

            delete= false;
            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{

            con.cerrarConexion();
        }
        return delete;
    }

    @Override
    public boolean update(UsersDto dto) {
        boolean update=false;            
            PreparedStatement ps;
        try {
            ps = con.getConexion().prepareStatement(SQL_UPDATE);
            ps.setInt(1, dto.getId_profile());
            ps.setString(2, dto.getName());
            ps.setString(3, dto.getEmail());
            ps.setString(4, dto.getArea());
            ps.setString(5, dto.getUser());
            ps.setString(6, dto.getPass());
            ps.setInt(7, dto.getStatus());
            ps.setInt(8, dto.getId_user());
            ps.executeUpdate();
            
            update=true;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        }       
        finally{
            con.cerrarConexion();
        }
       return update;    
    }

    public UsersDto select(Object key) {
        UsersDto dto = null;
        PreparedStatement ps;
        ResultSet rs;

        try {
            ps = con.getConexion().prepareStatement(SQL_READ);
            ps.setInt(1, (int) key);
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

    @Override
    public List<UsersDto> selectAll() {
        PreparedStatement ps;
        ResultSet rs;

        List<UsersDto> users = new ArrayList();
        try {

            ps = con.getConexion().prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {

                users.add(new UsersDto(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8)));

            }
            return users;
        } catch (SQLException ex) {

            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();

        }
        return users;
    }

    public List<UsersDto> selectPartipants() {
        PreparedStatement ps;
        ResultSet rs;

        List<UsersDto> users = new ArrayList();
        try {

            ps = con.getConexion().prepareStatement(SQL_PARTICIPANTS);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                UsersDto dto = new UsersDto();
                dto.setId_user(rs.getInt(1));
                dto.setName(rs.getString(2));

                users.add(dto);

            }
            return users;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return users;
    }

}
