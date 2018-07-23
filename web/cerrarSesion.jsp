<%-- 
    Document   : cerrarSesion
    Created on : 22/07/2018, 09:12:38 PM
    Author     : Rodrigo
--%>

<%-- 
    Document   : cerrarSesion
    Created on : 4/10/2016, 01:43:56 PM
    Author     : azareel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
    String usuario="";
    HttpSession sesionOK=request.getSession();
    if (sesionOK.getAttribute("usuarioSesion") !=null)
    {
        sesionOK.removeAttribute("usuarioSesion");
        sesionOK.invalidate();
    }
%>
<jsp:forward page="index.jsp"/>
