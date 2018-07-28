<%@page import="com.gestorsye.dao.ProjectsDao"%>
<%@page import="com.gestorsye.dao.UsersDao"%>
<%@page import="com.gestorsye.dao.TasksDao"%>
<%@page import="com.gestorsye.dto.ProjectsDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.gestorsye.dto.TasksDto"%>
<%
    //ProjectsDto project = (ProjectsDto) request.getSession().getAttribute("dto");
    //ArrayList<TasksDto> dtos = (ArrayList<TasksDto>) request.getSession().getAttribute("tareas");
    UsersDto user = (UsersDto) request.getSession().getAttribute("usuarioSesion");

    TasksDao dao = new TasksDao();
    List<TasksDto> dtos = new ArrayList();
    dtos = dao.selectAll();

    ProjectsDao pdao = new ProjectsDao();
    List<ProjectsDto> projects = new ArrayList();
    projects = pdao.selectbycreator(user.getIdUser());

    UsersDao us = new UsersDao();

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Gestor SYE Software</title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="${pageContext.request.contextPath}/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- NProgress -->
        <link href="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Theme Style -->
        <link href="${pageContext.request.contextPath}/assets/css/custom.min.css" rel="stylesheet" type="text/css"/>
        <!-- Datatables -->
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">       


        <link href="${pageContext.request.contextPath}/assets/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- bootstrap-datetimepicker -->
        <link href="${pageContext.request.contextPath}/assets/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
        <!-- Ion.RangeSlider -->
        <link href="${pageContext.request.contextPath}/assets/vendors/normalize-css/normalize.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/ion.rangeSlider/css/ion.rangeSlider.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
        <!-- Bootstrap Colorpicker -->
        <link href="${pageContext.request.contextPath}/assets/vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/assets/vendors/cropper/dist/cropper.min.css" rel="stylesheet">
         <script src="${pageContext.request.contextPath}/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
        
        <script>
	$(document).ready(function() {
		$('#submit').click(function(event) {
                    console.log("prueba");
			var id = $('#id').val();
			
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('PruebaServlet', {
				id : id		
			}, function(responseText) {
				$('#tabla').html(responseText);
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
                                <h3>Tareas</h3>
                            </div>

                        </div>
                        <br>
                        <br>
                        <!--Aqui va todo el contenido nuevo-->
                        <div class="x_panel">

                            <div class="row">
                                <div class="col-sm-2">
                                    <label>Seleccionar proyecto: </label>
                                </div>
                            
                                    <div class="col-md-6">
                                    <select class="form-control ">
                                        <%                                                for (int i = 0; i < projects.size(); i++) {
                                        %>
                                        <option><%=projects.get(i).getProjectName()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                    
                                </div>
                                <div class=col-sm-3">
                                    <input class="btn btn-primary" type="button" value="Seleccionar" id="submit">
                                </div>
                                    <input type="text" id="id">
                            </div>
                           
                         
                            </div>
                        </div>
                                    
                                    
                        <div class="x_panel">
                            <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal1">Agregar</a>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="table" >
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Listado de tareas</h2>                                    
                                    <div class="clearfix"></div>
                                </div>

                                <div class="x_content" >  
                                    <div id="tabla">
                                    </div>

                                    <div class="table-responsive" style="display: none">
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr class="headings">                                                                                                                                                            
                                                    <th class="column-title">Titulo </th>                                                    
                                                    <th class="column-title">Tipo de tarea</th>
                                                    <th class="column-title">Prioridad </th>                           
                                                    <th class="column-title">Informante </th>
                                                    <th class="column-title">Responsable</th>
                                                    <th class="column-title">Status</th>         
                                                    <th class="column-title">Opciones</th>         

                                                </tr>
                                            </thead>
                                            <tbody>   
                                                <%                                                    for (int i = 0; i < dtos.size(); i++) {
                                                %>
                                                <tr class="odd pointer">

                                                    <td ><%=dtos.get(i).getTitle()%></td>
                                                    <td ><%=dtos.get(i).getTypeTask()%></td>
                                                    <td ><%=dtos.get(i).getPriority()%></td>
                                                    <td ><%=us.getNameById(dtos.get(i).getNameCreator())%></td>
                                                    <td ><a href="#"><%=us.getNameById(dtos.get(i).getUserAssigned())%></a></td>
                                                    <td ><%=dtos.get(i).getStatusTask()%></td>   
                                                    <td>

                                                        <a href="ViewProject" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> Ver </a>
                                                        <a class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal1" ><i class="fa fa-pencil"></i> Editar </a>                                                        
                                                        <a class="btn btn-danger btn-xs" data-toggle="modal" data-target="#confirmacion" onclick="setId(<%=dtos.get(i).getIdTask()%>)" ></i> Eliminar </a>
                                                        <div class="btn-group">
                                                            <button data-toggle="dropdown" class="btn btn-xs dropdown-toggle" type="button" aria-expanded="false">Accion <span class="caret"></span>
                                                            </button>
                                                            <ul role="menu" class="dropdown-menu">
                                                                <li><a data-toggle="modal" data-target="#cerrar" onclick="setOpcion('Cerrada');setId(<%=dtos.get(i).getIdTask()%>);changeStatus()">Cerrar</a>
                                                                </li>
                                                                <li><a data-toggle="modal" data-target="#suspender" onclick="setOpcion('Suspendida');setId(<%=dtos.get(i).getIdTask()%>);changeStatus()">Suspender</a>
                                                                </li>
                                                                <li><a data-toggle="modal" data-target="#reabrir" onclick="setOpcion('Reabierta');setId(<%=dtos.get(i).getIdTask()%>);changeStatus()">Reabir</a>
                                                                </li>                                                                
                                                            </ul>
                                                        </div>
                                                    </td>
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
                                <input name="title" type="text" class="form-control" id="recipient-name" required>
                                <label for="recipient-name" class="col-form-label">Tipo de tarea</label>
                                <div>
                                    <select class="form-control" name="type" required>
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
                                    <select class="form-control" name="priority" required>
                                        <option>Muy alta</option>
                                        <option>Alta</option>
                                        <option>Media</option>
                                        <option>Baja</option>
                                        <option>Muy baja</option>
                                    </select>
                                </div>
                                <label for="recipient-name" class="col-form-label">Descripcion de la tarea</label>
                                <textarea class="form-control" name="description" rows="5" required></textarea>
                                <label for="recipient-name" class="col-form-label">Fecha estimada</label>
                                <input name="estimatedDate" type="date" class="form-control" id="recipient-name" required>
                                <label for="recipient-name" class="col-form-label">Fecha de entrega</label>
                                <input name="deliveryDate" type="date" class="form-control" id="recipient-name" required>
                                <label for="recipient-name" class="col-form-label">Responsable</label>
                                <div>
                                    <select class="form-control" name="userAssigned" required>
                                        <option value="1">Usuario 1</option>
                                        <option value="2">Usuario 2</option>                                       
                                    </select>
                                </div>
                                <label for="recipient-name" class="col-form-label">Status</label>
                                <div>
                                    <select class="form-control" name="status" required>
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
                        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff">Advertencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <h5>�Seguro desea eliminar esta tarea?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button onclick="deleteById()" class="btn btn-primary">Aceptar</button>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="reabrir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54">
                        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff">Reabrir incidencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <h5>�Seguro desea eliminar esta tarea?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button onclick="deleteById()" class="btn btn-primary">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="suspender" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54">
                        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff">Suspender incidencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <h5>�Seguro desea eliminar esta tarea?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button onclick="deleteById()" class="btn btn-primary">Aceptar</button>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="cerrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54">
                        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff">Cerrar incidencia</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <h5>�Seguro desea eliminar esta tarea?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button onclick="deleteById()" class="btn btn-primary">Aceptar</button>

                    </div>
                </div>
            </div>
        </div>
        <script>
            var opcion;
            var id;

            function setId(id) {
                this.id = id;
            }
            function deleteById() {
                window.location = "DeleteTask?id=" + id;
            }
            function setOpcion(opcion) {
                console.log('opcion:::', opcion);
                this.opcion = opcion;
            }
            function changeStatus() {
                window.location = "UpdateTask?id=" + id + "&opcion=" + opcion;
            }
        </script>

        <!-- jQuery -->
       
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/assets/vendors/fastclick/lib/fastclick.js" type="text/javascript"></script>
        <!-- NProgress -->
        <script src="${pageContext.request.contextPath}/assets/vendors/moment/min/moment.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.js" type="text/javascript"></script>

        <!-- iCheck -->
        <script src="${pageContext.request.contextPath}/assets/vendors/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- Datatables -->
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/jszip/dist/jszip.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/pdfmake/build/pdfmake.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/pdfmake/build/vfs_fonts.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="${pageContext.request.contextPath}/assets/js/custom.min.js" type="text/javascript"></script>

        <script>

        </body>
        </html>
