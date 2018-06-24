<%@page import="com.gestorsye.dto.ProfilesDto"%>
<%@page import="com.gestorsye.dto.UsersDto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%
            ArrayList<UsersDto> dtos = (ArrayList<UsersDto>) request.getSession().getAttribute("dtos");
            ArrayList<ProfilesDto> dtosprofiles = (ArrayList<ProfilesDto>) request.getSession().getAttribute("dtosprofiles");

        %>
        <title>Gestor Sye | </title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="${pageContext.request.contextPath}/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- NProgress -->
        <link href="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Theme Style -->
        <link href="${pageContext.request.contextPath}/assets/css/custom.min.css" rel="stylesheet" type="text/css"/>

    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Gestor Sye</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <!-- sidebar menu -->
                        <!-- /menu footer buttons -->
                        <%@include file="structure/Menu.jsp" %>

                    </div>
                </div>

                <!-- top navigation -->
                <%@include file="structure/TopNavigation.jsp" %>

                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_center">
                                <h3>Usuarios</h3>
                            </div>

                        </div>
                        <br/>
                        <br/>


                        <div class="clearfix"></div>
                        <!--Aqui va todo el contenido nuevo-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">                   
                                    <div class="col-md-10"> <h2>Usuarios</h2> </div>
                                    <div class="col-md-2">
                                    <a href="#" onclick="openModalNewUSer()" class="btn btn-danger btn-xs" ><i class="fa fa-plus"></i> Añadir nuevo usuario </a></td>
                                    </div>
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Nombre</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Area</th>
                                                <th scope="col">Usuario</th>
                                                <th scope="col">Password</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (int i = 0; i < dtos.size(); i++) {
                                            %>
                                            <tr>
                                                <td><a><%= dtos.get(i).getName()%></a></td>
                                                <td><a><%= dtos.get(i).getEmail()%></a></td>
                                                <td><a><%= dtos.get(i).getArea()%></a></td>
                                                <td><a><%= dtos.get(i).getUser()%></a></td>
                                                <td><a><%= dtos.get(i).getPass()%></a></td>

                                                <td><button type="button" class="btn btn-success btn-xs"><%=dtos.get(i).getStatus()%></button></td>
                                                <td><a href="ViewProject?id=<%=dtos.get(i).getId_user()%>" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                    <a href="ViewProject?id=<%=dtos.get(i).getId_user()%>" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                    <a href="DeleteUsers?id=<%=dtos.get(i).getId_user()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>

                
                        
                         <!--modal--><!--Para añadir, visualizar, editar Usuarios-->
                        <div class="modal fade" id="modalNewUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #2A3F54" >
                                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Crear nuevo usuario</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="InsertUsers" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <label for="recipient-name" class="col-form-label">Perfil</label>
                                            <select name="perfil" class="select2_single form-control" tabindex="-1">
                                                <option value="0">Seleccione el perfil</option>
                                                                                            <%
                                                for (int i = 0; i < dtosprofiles.size(); i++) {
                                            %>
                                                <option value="<%=dtosprofiles.get(i).getId_profile()%>"><%=dtosprofiles.get(i).getName()%></option>
                                            <% 
                                            }
                                            %>
                                            </select>
                                                <label for="recipient-name" class="col-form-label">Nombre</label>
                                                <input type="text" name="nombre" required="required" class="form-control" >                                                
                                                <label for="recipient-name" class="col-form-label">Email</label>
                                                <input type="text" name="email" required="required" class="form-control">                                                
                                                <label for="recipient-name" class="col-form-label">Área</label>
                                                <select name="area" class="select2_single form-control" tabindex="-1">
                                                <option></option>
                                                <option value="area1">Area 1</option>
                                                </select>                                                                                             
                                                <label for="recipient-name" class="col-form-label">Usuario</label>
                                                <input type="text" name="usuario" required="required" class="form-control">
                                                <label for="recipient-name" class="col-form-label">Contraseña</label>
                                                <input type="password" name="pass" required="required" class="form-control">
                                                <label for="recipient-name" class="col-form-label">Status</label>
                                                <input type="text" name="status" required="required" class="form-control">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                <button type="submit" class="btn btn-primary">Crear</button>
                                            </div>
                                        </form>
                                </div>
                            </div>
                        </div>
                    </div>
                         
                    <!--modal--><!--Alerta de eliminacion de usuario-->
                   <div class="modal fade" id="alert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                       <div class="modal-dialog" role="document">
                           <div class="modal-content">
                               <div class="modal-header" style="background-color: #2A3F54" >
                                   <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Crear nuevo usuario</h5>
                                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                   </button>
                               </div>
                               <div class="modal-body">

                                </div>
                            </div>
                        </div>
                    </div>
                         
                        <!--Aqui va todo el contenido nuevo-->
                        
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <%@include file="structure/Footer.jsp" %>

            </div>
        </div>
        
        <script>
            function openModalNewUSer(){
                $('#modalNewUser').modal('show')
                //$('#modal1').modal('show')
            }
            function alert(){
                $('#alert').modal('show')
            }
        </script>

        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/assets/vendors/fastclick/lib/fastclick.js" type="text/javascript"></script>
        <!-- NProgress -->
        <script src="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.js" type="text/javascript"></script>
        <!-- Custom Theme Scripts -->
        <script src="${pageContext.request.contextPath}/assets/js/custom.min.js" type="text/javascript"></script>


    </body>
</html>
