<%@page import="com.gestorsye.dto.ProjectsDto"%>
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
            ArrayList<ProjectsDto> dtos = (ArrayList<ProjectsDto>) request.getSession().getAttribute("dtos");
        %>
        <title>Gentelella Alela! | </title>

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
                            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
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
                                <h3>Proyectos</h3>
                            </div>

                        </div>
                        <br/>
                        <br/>


                        <div class="clearfix"></div>
                        <!--Aqui va todo el contenido nuevo-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">                   
                                    <h2>Proyectos</h2>
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Nombre del Proyecto</th>
                                                <th scope="col">Miembros del equipo</th>
                                                <th scope="col">Progreso del proyecto</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td ><a>Pesamakini Backend UI</a>
                                                    <br />
                                                    <small>Created 01.01.2015</small></td>
                                                <td>Miembros del equipo</td>
                                                <td><div class="progress progress_sm">
                                                        <!--<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="57"></div>-->
                                                    </div>
                                                    <small>57% Complete</small></td>
                                                <td><button type="button" class="btn btn-success btn-xs">Success</button></td>
                                                <td><a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                    <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                    <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a></td>
                                            </tr>
                                            <%                                                for (int i = 0; i < dtos.size(); i++) {
                                            %>
                                            <tr>
                                                <td><a><%= dtos.get(i).getProject_name()%></a>
                                                    <br />
                                                    <small>Created <%= dtos.get(i).getFecha()%></small></td>
                                                <td>Miembros del equipo</td>
                                                <td><div class="progress progress_sm">
                                                        <!--<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="57"></div>-->
                                                    </div>
                                                    <small><%=dtos.get(i).getProgress()%>% Complete</small></td>

                                                <td><button type="button" class="btn btn-success btn-xs"><%=dtos.get(i).getStatus()%></button></td>
                                                <td><a href="ViewProject?id=<%=dtos.get(i).getId_project()%>" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                    <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal1" onclick="setData(<%=dtos.get(i).getId_project()%>, '<%=dtos.get(i).getProject_name()%>', '<%=dtos.get(i).getDescription()%>',<%=dtos.get(i).getProgress()%>, '<%=dtos.get(i).getStatus()%>')" ><i class="fa fa-pencil"></i> Edit </a>
                                                    <a href="DeleteProjects?id=<%=dtos.get(i).getId_project()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    <a class="btn btn-danger btn-xs" data-toggle="modal" data-target="#confirmacion" onclick="setId(<%=dtos.get(i).getId_project()%>)"><i class="fa fa-trash-o"></i> Eliminar </a></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
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

        <!--modal-->
        <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54" >
                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Crear incidencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="UpdateProjects" method="post" >
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Id del proyecto</label>
                                <input type="text" class="form-control" id="txt_id" name="txt_id">
                                <label for="recipient-name" class="col-form-label">Nombre del proyecto</label>
                                <input type="text" class="form-control" id="txt_1" name="txt_1">
                                <label for="recipient-name" class="col-form-label">Descripcion</label>
                                <input type="text" class="form-control" id="txt_2" name="txt_2">
                                <label for="recipient-name" class="col-form-label">Progreso</label>
                                <input type="text" class="form-control" id="txt_3" name="txt_3">
                                <label for="recipient-name" class="col-form-label">Status</label>
                                <input type="input" class="form-control" id="txt_4" name="txt_4">                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Aceptar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="confirmacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54">
                        <h5 class="modal-title" id="exampleModalLabel">Advertencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <h5>�Seguro desea eliminar este proyecto?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button onclick="deleteById()" class="btn btn-primary">Aceptar</button>
                        
                    </div>
                </div>
            </div>
        </div>
        <script>
            var id;
            function setData(id, nombre, descripcion, progreso, status) {
                console.log(nombre, descripcion, progreso, status);
                $('#txt_1').val(nombre);
                $('#txt_2').val(descripcion);
                $('#txt_3').val(progreso);
                $('#txt_4').val(status);
                $('#txt_id').val(id);
            }
            function setId(id){
            this.id=id;    
            }
            function deleteById(){
                console.log('deleteById');
                window.location = "DeleteProjects?id="+id;
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
