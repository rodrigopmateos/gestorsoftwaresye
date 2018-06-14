package com.gestorsye.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    public static Conexion instance;
    private Connection conexion;
    
    private Conexion(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestorsoftwaredb","root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public synchronized static Conexion abrirConexion(){
        if(instance==null){
            instance=new Conexion();
        }
        return instance;
    }    
    public void cerrarConexion(){
        instance= null;
    }

    public Connection getConexion() {
        return conexion;
    }
    
}
