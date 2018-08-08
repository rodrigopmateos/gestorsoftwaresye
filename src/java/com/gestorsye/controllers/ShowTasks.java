/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestorsye.controllers;

import com.gestorsye.dao.TasksDao;
import com.gestorsye.dao.UsersDao;
import com.gestorsye.dto.TasksDto;
import com.gestorsye.utilities.Tools;
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
 * @author jose
 */
public class ShowTasks extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        int usuario = Integer.parseInt(request.getParameter("usuario"));
        String status = Tools.getSatus(opcion);
        
        List<TasksDto> dtos = new ArrayList<>();
        TasksDao daot = new TasksDao();
        if(opcion == 6){
            dtos=daot.selectAllByUser(usuario);
        }else{
            dtos=daot.selectByEstatus(usuario, status);
        }
        
        
        UsersDao userdao=new UsersDao();
                
        
                out.println("<div class=\"x_panel\">");
                out.println("<table id=\"datatable\" class=\"table table-striped table-bordered\">");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th class=\"column-title\">Titulo</th>");
                out.println("<th class=\"column-title\">Tipo de tarea</th>");
                out.println("<th class=\"column-title\">Prioridad</th>");
                out.println("<th class=\"column-title\">Informante</th>");
                out.println("<th class=\"column-title\">Responsable</th>");
                out.println("<th class=\"column-title\">Status</th>");
                out.println("<th class=\"column-title\">Opciones</th>");
                out.println("</tr>");
                out.println("<thead>");
                out.println("<tbody>");

            for (int i = 0; i < dtos.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + dtos.get(i).getTitle() + "</td>");
                out.println("<td>" + dtos.get(i).getTypeTask() + "</td>");
                out.println("<td>" + dtos.get(i).getPriority() + "</td>");
                out.println("<td>" + userdao.getNameById(dtos.get(i).getNameCreator()) + "</td>");
                out.println("<td>" + userdao.getNameById(dtos.get(i).getUserAssigned()) + "</td>");
                out.println("<td>" + dtos.get(i).getStatusTask() + "</td>");
                out.println("<td>");
                out.println(" <a class=\"btn btn-info btn-xs\" data-toggle=\"modal\" data-target=\"#modal1\" ><i class=\"fa fa-pencil\"></i> Editar </a>");
                out.println(" <a class=\"btn btn-danger btn-xs\" data-toggle=\"modal\" data-target=\"#confirmacion\" onclick=\"setId("+dtos.get(i).getIdTask()+")\" ></i> Eliminar </a>");
                out.println(" <div class=\"btn-group\">");
                out.println("<button data-toggle=\"dropdown\" class=\"btn btn-xs dropdown-toggle\" type=\"button\" aria-expanded=\"false\">Accion <span class=\"caret\"></span></button>");
                out.println(" <ul role=\"menu\" class=\"dropdown-menu\">");
                out.println("<li><a id=\"cerrar\" data-toggle=\"modal\" data-target=\"#cerrar\" onclick=\"setOpcion('Cerrada');setId("+dtos.get(i).getIdTask()+");changeStatus()\">Cerrar</a></li>");
                out.println("<li><a id=\"suspender\" data-toggle=\"modal\" data-target=\"#suspender\" onclick=\"setOpcion('Suspendida');setId("+dtos.get(i).getIdTask()+");changeStatus()\">Suspender</a></li>");
                out.println("<li><a id=\"reabrir\" data-toggle=\"modal\" data-target=\"#reabrir\" onclick=\"setOpcion('Reabierta');setId("+dtos.get(i).getIdTask()+");changeStatus()\">Reabir</a></li>");
                out.println("</ul>");
                out.println("</div>");                                                  
                out.println("</td>");   
                out.println("</tr>");
            }
                out.println("<tbody>");
                out.println("</table>");
                out.println("</div>");

      
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
