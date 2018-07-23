/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.controllers;

import com.gestorsye.conexion.Conexion;
import com.gestorsye.dao.LogueoDao;
import com.gestorsye.dto.UsersDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController extends HttpServlet {
    
    private static final Conexion con = Conexion.abrirConexion();
    public boolean logueo=true;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();
        LogueoDao dao=new LogueoDao();
        UsersDto dto;
        String user = request.getParameter("txt_username");
        String pass = request.getParameter("txt_password");   
        
        dto=dao.getUser(user, pass);
        if(dto!= null){           
           request.getSession().setAttribute("user", dto);
           sesion.setAttribute("usuarioSesion", dto);
           response.sendRedirect("dashboard.jsp");
        }else{
           response.sendRedirect("index.jsp");           
           logueo=false;
           request.getSession().setAttribute("logueo", logueo);
        }
            
        
         
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
