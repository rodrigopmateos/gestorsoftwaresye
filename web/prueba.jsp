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
                                <h3>Plain Page</h3>
                            </div>

                        </div>
                        <!--Aqui va todo el contenido nuevo-->

                        <a class="btn btn-primary" data-toggle="modal" data-target="#modal1">Ir a modal</a>
                        <a class="btn btn-primary" data-toggle="modal" data-target="#modal2">Ir a modal2</a>
                        <a class="btn btn-primary" data-toggle="modal" data-target="#modal3">Ir a modal3</a>

                        <!--Aqui va todo el contenido nuevo-->
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <%@include file="structure/Footer.jsp" %>

            </div>
        </div>

        <!-- Modal -->

        <!--modal-->
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
                        <form>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Identificador</label>
                                <input type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Titulo</label>
                                <input type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Descripcion</label>
                                <input type="text" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Tipo de tarea</label>
                                <input type="date" class="form-control" id="recipient-name">
                                <label for="recipient-name" class="col-form-label">Fecha de entrega</label>
                                <input type="text" class="form-control" id="recipient-name">

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">$</span>
                                        <span class="input-group-text">0.00</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                                </div>
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm">Small</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                                </div>
                        </form>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Crear</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal-->
    <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #2A3F54" >
                    <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Registrar tiempo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Tarea</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Fecha</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Descripcion</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Horas trabajadas</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Horas restantes</label>
                            <input type="date" class="form-control" id="recipient-name">


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Crear</button>
                        </div>
                </div>
            </div>
        </div>
    </div>
    
        <!--modal-->
    <div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #2A3F54" >
                    <h5 class="modal-title" id="exampleModalLabel" style="color: #fff">Crear incidencia</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Titulo</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Descripcion</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Archivo adjunto</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Prioridad</label>
                            <input type="date" class="form-control" id="recipient-name">
                            <label for="recipient-name" class="col-form-label">Responsable</label>
                            <input type="date" class="form-control" id="recipient-name">
                            


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Crear</button>
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
