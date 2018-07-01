/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.controllers;

import com.gestorsye.dao.TasksDao;
import com.gestorsye.dto.TasksDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gato-
 */
public class InsertTask extends HttpServlet {

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
        
       String title = request.getParameter("title");
       String type = request.getParameter("type");
       String priority = request.getParameter("priority");
       String description = request.getParameter("description");
       String estimatedDate = request.getParameter("estimatedDate");
       String deliveryDate = request.getParameter("deliveryDate");
       int userAssigned = Integer.parseInt(request.getParameter("userAssigned"));
       String status = request.getParameter("status");
       
        TasksDto dto =  new TasksDto();
        dto.setTitle(title);   
        dto.setTypeTask(type);
        dto.setPriority(priority);
        dto.setDescription(description);
        dto.setEstimatedTime(estimatedDate);
        dto.setDeliveryDate(deliveryDate);
        dto.setId_userAssigned(userAssigned);
        dto.setStatus_task(status);
        TasksDao dao = new TasksDao();
        dao.create(dto);
        
        request.getRequestDispatcher("admintasks.jsp").forward(request, response);
        
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
