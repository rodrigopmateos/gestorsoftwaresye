/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.controllers;

import com.gestorsye.dao.ParticipantsDao;
import com.gestorsye.dao.ProjectsDao;
import com.gestorsye.dao.UsersDao;
import com.gestorsye.dto.ProjectsDto;
import com.gestorsye.dto.UsersDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gato-
 */
public class ViewProject extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        //Se obtiene el id del proyecto con el cual llamamos a la funcion 'select' para 
        //obetner los datos del proyecto seleccionado.
        int id = Integer.parseInt(request.getParameter("id"));
        ProjectsDto dto= new ProjectsDto();
        ProjectsDao dao = new ProjectsDao();
        dto = dao.select(id);
        request.getSession().setAttribute("dto", dto);

        //Se utiliza la funcion 'selectParticipants' para obtener
        //los participantes del proyecto a la cual le pasamos el id del proyecto
        
        ParticipantsDao pdao = new ParticipantsDao();
        List<UsersDto> asignados=new ArrayList<>();        
        asignados= pdao.selectUsersByProject(id);
        
        
        //Se obtienen los usuarios  que no esten asignados a un proyecto
        UsersDao udao =  new UsersDao();
        List<UsersDto> sinAsignar = new ArrayList<>();
        sinAsignar = udao.selectPartipants();
        
        request.getSession().setAttribute("asignados",asignados);
        request.getSession().setAttribute("sinAsignar", sinAsignar);
        request.getSession().setAttribute("idProject", id);      
        
        response.sendRedirect("projectsview.jsp");
        
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
