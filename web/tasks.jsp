<%
UsersDto usser = (UsersDto)session.getAttribute("usuarioSesion");
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
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    
     <script>
            $(document).ready(function () {
                $('#abierta').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ShowTasks', {
                        opcion: 1 , usuario: <%= usser.getIdUser()%>
                    }, function (responseText) {
                        $('#table').html(responseText);
                    });
                });
            });
            $(document).ready(function () {
                $('#progreso').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ShowTasks', {
                        opcion: 2 , usuario: <%= usser.getIdUser()%>
                    }, function (responseText) {
                        $('#table').html(responseText);
                    });
                });
            });
            $(document).ready(function () {
                $('#suspendida').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ShowTasks', {
                        opcion: 3 , usuario: <%= usser.getIdUser()%>
                    }, function (responseText) {
                        $('#table').html(responseText);
                    });
                });
            });
            $(document).ready(function () {
                $('#reabierta').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ShowTasks', {
                        opcion: 4 , usuario: <%= usser.getIdUser()%>
                    }, function (responseText) {
                        $('#table').html(responseText);
                    });
                });
            });
            $(document).ready(function () {
                $('#cerrada').click(function (event) {
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ShowTasks', {
                        opcion: 5 , usuario: <%= usser.getIdUser()%>
                    }, function (responseText) {
                        $('#table').html(responseText);
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
              
              <!--Aqui va todo el contenido nuevo-->
              
              <br/>
              <div class="x_content text-center">
                    <div class="row">
                      <div class="btn-group">
                          <button id="abierta" class="btn btn-default" type="button">Abierta</button>
                          <button id="progreso" class="btn btn-info" type="button">En progreso</button>
                          <button id="suspendida" class="btn btn-warning" type="button">Suspendida</button>
                          <button id="reabierta" class="btn btn-dark" type="button">Reabierta</button>
                          <button id="cerrada" class="btn btn-danger" type="button">Cerrada</button>
                      </div>
                    </div>
              </div>
          
              <div class="x_panel">
                  
                  <div id="table">
                  </div>
                  
                  <%
                  for(int i=0; i<10; i++){
                  %>
                 
<!--                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel ">
                          <div class="x_content text-center">

                              <h2 >Musimbi</h2>

                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3>123</h3>
                                  <h6>Tiempo estimado</h6>
                                </li>
                                <li>
                                  <h3>1234</h3>
                                  <h6>Tiempo trabajado</h6>
                                </li>
                              </ul>
                            </div>
                            <p>
                              If you've decided to go in development mode and tweak all of this a bit, there are few things you should do.
                            </p>
                            <div>
                            <button type="button" class="btn btn-primary">Registrar</button>
                            </div>
                          </div>
                            
                        </div>
                          
                      </div>-->
                  <%
                  }
                  %>
                  
              </div>
               
             
              <!--Aqui va todo el contenido nuevo-->
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <%@include file="structure/Footer.jsp" %>
        
      </div>
    </div>

    
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
