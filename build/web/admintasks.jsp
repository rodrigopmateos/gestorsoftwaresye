<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.gestorsye.dto.TasksDto"%>
<%
    ArrayList<TasksDto> dtos = (ArrayList<TasksDto>) request.getSession().getAttribute("tareas");
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
                                <h3>Tareas</h3>
                            </div>

                        </div>
                        <br>
                        <br>
                        <!--Aqui va todo el contenido nuevo-->
                        <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal1">Agregar</a>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Listado de tareas</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#">Settings 1</a>
                                                </li>
                                                <li><a href="#">Settings 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>

                                <div class="x_content">                                    

                                    <div class="table-responsive">
                                        <table class="table table-striped jambo_table bulk_action">
                                            <thead>
                                                <tr class="headings">                                                                                                                                                            
                                                    <th class="column-title">Titulo </th>
                                                    <th class="column-title">Descripcion </th>
                                                    <th class="column-title">Tipo de tarea</th>
                                                    <th class="column-title">Prioridad </th>
                                                    <th class="column-title">Tiempo estimado </th>
                                                    <th class="column-title">Fecha de entrega </th>
                                                    <th class="column-title">Informante </th>
                                                    <th class="column-title">Responsable</th>
                                                    <th class="column-title">Status</th>                                                    

                                                </tr>
                                            </thead>

                                            <tbody>
                                                <%                           
                                                for (int i = 0; i < dtos.size(); i++) {
                                                %>
                                                <tr class="odd pointer">

                                                    <td > <%=dtos.get(i).getTitle()%></th>
                                                    <td ><%=dtos.get(i).getDescription()%> </th>
                                                    <td ><%=dtos.get(i).getTypeTask()%></th>
                                                    <td ><%=dtos.get(i).getPriority()%></th>
                                                    <td ><%=dtos.get(i).getEstimatedTime()%></th>
                                                    <td ><%=dtos.get(i).getDeliveryDate()%></th>
                                                    <td ><%=dtos.get(i).getId_userCreate()%></th>
                                                    <td ><%=dtos.get(i).getId_userAssigned()%></th>
                                                    <td ><%=dtos.get(i).getStatus_task()%></th>   
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
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
        <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54" >
                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Crear tarea nueva</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="InsertTask" method="post">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Nombre de la tarea</label>
                                <input name="title" type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Tipo de tarea</label>
                                <div>
                                    <select class="form-control" name="type">
                                        <option>Tarea</option>
                                        <option>Error</option>
                                        <option>Error Cliente</option>
                                        <option>Mejora</option>
                                        <option>Solicitud de cambios</option>
                                        <option>Datos generales</option>
                                    </select>
                                </div>
                                <label for="recipient-name" class="col-form-label">Prioridad de la tarea</label>
                                <div>
                                    <select class="form-control" name="priority">
                                        <option>Muy alta</option>
                                        <option>Alta</option>
                                        <option>Media</option>
                                        <option>Baja</option>
                                        <option>Muy baja</option>
                                    </select>
                                </div>
                                <label for="recipient-name" class="col-form-label">Descripcion de la tarea</label>
                                <textarea class="form-control" name="description" rows="5"></textarea>
                                <label for="recipient-name" class="col-form-label">Fecha estimada</label>
                                <input name="estimatedDate" type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Fecha de entrega</label>
                                <input name="deliveryDate" type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Responsable</label>
                                <div>
                                    <select class="form-control" name="userAssigned">
                                        <option value="1">Usuario 1</option>
                                        <option value="2">Usuario 2</option>                                       
                                    </select>
                                </div>
                                <label for="recipient-name" class="col-form-label">Status</label>
                                <div>
                                    <select class="form-control" name="status">
                                        <option value="Abierta">Abierta</option>
                                        <option value="Cerrada">Cerrada</option>
                                        <option value="En progreso">En progreso</option>
                                        <option value="Suspendida">Suspendida</option>
                                        <option value="Reabierta">Reabierta</option>
                                    </select>
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
    </div>

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
