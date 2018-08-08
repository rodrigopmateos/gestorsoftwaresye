<%@page import="java.util.ArrayList"%>
<%@page import="com.gestorsye.dao.TasksDao"%>
<%@page import="com.gestorsye.dto.TasksDto"%>
<%@page import="java.util.List"%>
<%
    UsersDto ussr = (UsersDto) session.getAttribute("usuarioSesion");

    List<TasksDto> tareas = new ArrayList();
    TasksDao taskdao = new TasksDao();
    tareas = taskdao.selectSomeTasks(ussr.getIdUser(), "Abierta");

%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Gentelella Alela! | </title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/vendors/fullcalendar3.9/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/vendors/fullcalendar3.9/fullcalendar.print.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="${pageContext.request.contextPath}/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- NProgress -->
        <link href="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Theme Style -->
        <link href="${pageContext.request.contextPath}/assets/css/custom.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $('#registrar').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    var idTask = $("#idTask").val();
                    var time = $("#time").val();
                    $.post('LogWork', {
                        id: idTask,time: time
                    }, function (responseText) {
                        $('#ejemplo').html(responseText);
                    });
                });
            });
        </script>

    </head>

    <body class="nav-md">


        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Gestor SYE</span></a>
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
                                <h3>Registrar trabajo</h3>
                            </div>

                        </div>
                        <!--Aqui va todo el contenido nuevo-->
                        <br/> 
                        <br/>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">


                                    <%                                        for (int i = 0; i < tareas.size(); i++) {
                                    %>

                                    <div class="col-md-3 col-xs-12 widget widget_tally_box">
                                        <div class="x_panel ">
                                            <div class="x_content text-center">

                                                <h2 ><%= tareas.get(i).getTitle()%></h2>

                                                <div class="flex">
                                                    <ul class="list-inline count2">
                                                        <li>
                                                            <h4><%=tareas.get(i).getEstimatedTime()%></h4>
                                                            <h6>Tiempo estimado</h6>
                                                        </li>
                                                        <li>
                                                            <h3>1234</h3>
                                                            <h6>Tiempo trabajado</h6>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <p>
                                                    <%= tareas.get(i).getDescription()%>
                                                </p>
                                                <div id="<%= tareas.get(i).getDescription()%>">
                                                    <button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#modalRegistrar"  onclick="setData(<%= tareas.get(i).getIdTask()%>,'<%= tareas.get(i).getTitle()%>');">Registrar</button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <%
                                        }
                                    %>
                                   
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

    

             <div class="modal fade" id="modalRegistrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54" >
                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Registrar trabajo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                  <label for="recipient-name" class="col-form-label">Nombre:   </label> <span id="titulo"></span>
                                <br/>
                                <br/>
                                <label for="recipient-name" class="col-form-label">Tiempo trabajado</label>
                                <input type="time" class="form-control" id="time">
                                <input type="text"  id="idTask" hidden>

                                  </div>
                            
                  
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary" id="registrar">Registrar</button>
                         
                    </div>
                            </form>
                </div>
                    
            </div>
        </div>
    </div>

        
        <script>
            
            function setData(id, title){
                $("#titulo").text(title);
                $("#idTask").val(id);
              
            }
            </script>

        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/assets/vendors/fullcalendar3.9/moment.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/fullcalendar3.9/fullcalendar.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/custom.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/assets/vendors/fastclick/lib/fastclick.js" type="text/javascript"></script>
        <!-- NProgress -->
        <script src="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.js" type="text/javascript"></script>
        <!-- Custom Theme Scripts -->



    </body>
</html>
