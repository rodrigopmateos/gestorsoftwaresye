<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.gestorsye.dto.ProjectsDto"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%
            ProjectsDto projects = (ProjectsDto) request.getSession().getAttribute("dto");
            List<UsersDto> sinAsignar = (ArrayList<UsersDto>) request.getSession().getAttribute("sinAsignar");
            List<UsersDto> asignados = (ArrayList<UsersDto>) request.getSession().getAttribute("asignados");
        %>
        <title>Gentelella Alela! | </title>
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>     
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Tokenize-->
        <script src="${pageContext.request.contextPath}/assets/vendors/Tokenize/tokenize2.min.js" type="text/javascript"></script>
        <!--        Tokenize-->
        <link href="${pageContext.request.contextPath}/assets/vendors/Tokenize/tokenize2.min.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="${pageContext.request.contextPath}/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- NProgress -->
        <link href="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Theme Style -->
        <link href="${pageContext.request.contextPath}/assets/css/custom.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/assets/vendors/fastclick/lib/fastclick.js" type="text/javascript"></script>
        <!-- NProgress -->
        <script src="${pageContext.request.contextPath}/assets/vendors/nprogress/nprogress.js" type="text/javascript"></script>      
        <!-- Datatables -->
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">


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
                                <h3>Proyectos</h3>
                            </div>

                        </div>
                        <!--Aqui va todo el contenido nuevo-->
                        <br>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=projects.getProject_name()%></h2>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="x_content">

                                        <div class="col-md-9 col-sm-9 col-xs-12">

                                            <ul class="stats-overview">
                                                <li>
                                                    <span class="name"> Presupuesto estimado </span>
                                                    <span class="value text-success"> 2300 </span>
                                                </li>
                                                <li>
                                                    <span class="name"> Total gastado </span>
                                                    <span class="value text-success"> 2000 </span>
                                                </li>
                                                <li class="hidden-phone">
                                                    <span class="name"> Duracion estimada del proyecto</span>
                                                    <span class="value text-success"> 20 </span>
                                                </li>
                                            </ul>
                                            <br />

                                            <div id="mainb" style="height:350px;"></div>
                                            <div>

                                                <h3>Integrantes del equipo<a style="float:right" class="btn btn-sm btn-primary" data-toggle='modal' data-target='#addParticipant'>Agregar</a></h3>
                                                <div class="x_content">                                                  
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Nombre</th>
                                                                <th scope="col">Usuario</th>
                                                                <th scope="col">Correo</th>
                                                                <th scope="col">Area</th>
                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody>   
                                                <tr>
                                                             <%                                                
                                                                for (int i = 0; i < asignados.size(); i++) {
                                                             %>
                                                <tr>
                                                    <td><%= asignados.get(i).getName()%></td>
                                                    <td><%=asignados.get(i).getUser()%></td>
                                                    <td><%=asignados.get(i).getEmail()%></td>
                                                    <td><%=asignados.get(i).getArea()%></td>
                                                      
                                                    
                                                    </tr>
                                                <% }%>

                                                    </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <br/>
                                                <br/>
                                                <!-- end of user messages -->
                                                <h3>Mensajes</h3>
                                                <ul class="messages">
                                                    <li>
                                                        <img src="images/img.jpg" class="avatar" alt="Avatar">
                                                        <div class="message_date">
                                                            <h3 class="date text-info">24</h3>
                                                            <p class="month">May</p>
                                                        </div>
                                                        <div class="message_wrapper">
                                                            <h4 class="heading">Desmond Davison</h4>
                                                            <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                                            <br />
                                                            <p class="url">
                                                                <span class="fs1 text-info" aria-hidden="true"></span>
                                                                <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <img src="images/img.jpg" class="avatar" alt="Avatar">
                                                        <div class="message_date">
                                                            <h3 class="date text-error">21</h3>
                                                            <p class="month">May</p>
                                                        </div>
                                                        <div class="message_wrapper">
                                                            <h4 class="heading">Brian Michaels</h4>
                                                            <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                                            <br />
                                                            <p class="url">
                                                                <span class="fs1" aria-hidden="true"></span>
                                                                <a href="#" data-original-title="">Download</a>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <img src="images/img.jpg" class="avatar" alt="Avatar">
                                                        <div class="message_date">
                                                            <h3 class="date text-info">24</h3>
                                                            <p class="month">May</p>
                                                        </div>
                                                        <div class="message_wrapper">
                                                            <h4 class="heading">Desmond Davison</h4>
                                                            <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                                                            <br />
                                                            <p class="url">
                                                                <span class="fs1 text-info" aria-hidden="true"></span>
                                                                <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                                                            </p>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <!-- end of user messages -->


                                            </div>


                                        </div>

                                        <!-- start project-detail sidebar -->
                                        <div class="col-md-3 col-sm-3 col-xs-12">

                                            <section class="panel">
                                                <div class="panel-body">
                                                    <h2>Descripcion</h2>

                                                    <p><%=projects.getDescription()%></p>
                                                    <br />

                                                    <div class="project_detail">

                                                        <p class="title">Cliente del proyecto</p>
                                                        <p>Deveint Inc</p>
                                                        <p class="title">Lider de proyecto</p>
                                                        <p>Tony Chicken</p>
                                                    </div>

                                                    <br />
                                                    <h5>Project files</h5>
                                                    <ul class="list-unstyled project_files">
                                                        <li><a href=""><i class="fa fa-file-word-o"></i> Functional-requirements.docx</a>
                                                        </li>
                                                        <li><a href=""><i class="fa fa-file-pdf-o"></i> UAT.pdf</a>
                                                        </li>
                                                        <li><a href=""><i class="fa fa-mail-forward"></i> Email-from-flatbal.mln</a>
                                                        </li>
                                                        <li><a href=""><i class="fa fa-picture-o"></i> Logo.png</a>
                                                        </li>
                                                        <li><a href=""><i class="fa fa-file-word-o"></i> Contract-10_12_2014.docx</a>
                                                        </li>
                                                    </ul>
                                                    <br />

                                                    <div class="text-center mtop20">
                                                        <a  class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addFile">Agregar archivos</a>
                                                        <a href="#" class="btn btn-sm btn-warning">Report contact</a>
                                                    </div>
                                                </div>

                                            </section>

                                        </div>
                                        <!-- end project-detail sidebar -->

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


        <div class="modal fade" id='addParticipant' tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54" >
                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Agregar participantes</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="InsertParticipant?id=<%= projects.getId_project()%>" method="post">
                            <div class="form-group">

                                <label for="recipient-name">Responsable</label>
                                <div>
                                    <select class="form-control tokenize-demo" multiple  tabindex="-1" name="participants">
                                        <option></option>
                                        <%
                                            for (int i = 0; i < sinAsignar.size(); i++) {
                                        %>
                                        <option value="<%= sinAsignar.get(i).getId_user()%>"><%= sinAsignar.get(i).getName()%></option>                                                        
                                        <%
                                            }
                                        %>
                                    </select>
                                    <script>$('.tokenize-demo').tokenize2();</script>
                                </div>
                                <br/>
                                <br/>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Agregar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id='addFile' tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #2A3F54" >
                        <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Agregar Archivo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="InsertParticipant?id=<%= projects.getId_project()%>" method="post">
                            <div class="form-group">
                                <br/>
                                <label for="recipient-name">Selecciona el archivo</label>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="customFile">                                  
                                </div>
                                <br/>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Agregar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script src="${pageContext.request.contextPath}/assets/js/custom.min.js" type="text/javascript"></script>
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

    </body>
</html>
