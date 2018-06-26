/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.dao;

import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.dto.UsersDto;
import java.util.List;


public class UsersDao implements InterfaceDao<UsersDto>{

    private static final String SQL_INSERT = "INSERT INTO PERSONA (id, nombre, apellido) VALUES(?,?,?)";
    private static final String SQL_DELETE = " DELETE FROM PERSONA WHERE ID= ?";
    private static final String SQL_UPDATE = "UPDATE PERSONA SET = ? WHERE ID = ?";
    private static final String SQL_READ = "SELECT * FROM PERSONA WHERE ID = ?";
    private static final String SQL_READALL = "SELECT * FROM PERSONA";
    
    @Override
    public boolean create(UsersDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }

    @Override
    public boolean delete(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



    @Override
    public UsersDto select(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<UsersDto> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(UsersDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
