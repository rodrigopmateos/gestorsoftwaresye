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
                                <h3>Pagina principal</h3>
                            </div>

                        </div>
                        <!--Aqui va todo el contenido nuevo-->
                        <br/>
                        <br/>
                        <div class="row">

                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Desarrollo de Software<small>Pasos</small></h2>
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


                                        <!-- Smart Wizard -->
                                        <h4>Desarrollamos un plan de trabajo alineado a sus objetivos de negocio, m�nimamente invasivo, con procesos de f�cil aceptaci�n y no burocr�ticos. Llegamos al objetivo final propuesto a trav�s de peque�as interaciones de proyecto que permite ver resultados inmediatos. Reducimos sus costos.</h4>
                                        <br>
                                        <div id="wizard" class="form_wizard wizard_horizontal">
                                            <ul class="wizard_steps">
                                                <li>
                                                    <a href="#paso1">
                                                        <span class="step_no">1</span>
                                                        <span class="step_descr">
                                                            Paso 1<br />
                                                            <small>Captura, an�lisis y especificaci�n de requisitos</small>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#paso2">
                                                        <span class="step_no">2</span>
                                                        <span class="step_descr">
                                                            Paso 2<br />
                                                            <small>Clasificaci�n e identificaci�n de requisitos</small>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#paso3">
                                                        <span class="step_no">3</span>
                                                        <span class="step_descr">
                                                            Paso 3<br />
                                                            <small>Dise�o del sistema</small>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#paso4">
                                                        <span class="step_no">4</span>
                                                        <span class="step_descr">
                                                            Paso 4<br />
                                                            <small>Codificaci�n del software</small>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#paso5">
                                                        <span class="step_no">5</span>
                                                        <span class="step_descr">
                                                            Paso 5<br />
                                                            <small> Pruebas (unitarias y de integraci�n)</small>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#paso6">
                                                        <span class="step_no">6</span>
                                                        <span class="step_descr">
                                                            Paso 6<br />
                                                            <small>Mantenimiento</small>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>              
                                            <div id="paso1">
                                                <h2 class="StepTitle">1.- Captura, an�lisis y especificaci�n de requisitos</h2>
                                                <p>
                                                    La obtenci�n de especificaciones a partir del cliente (u otros actores intervinientes) es un proceso humano muy interactivo e iterativo; normalmente a medida que se captura la informaci�n, se la analiza y realimenta con el cliente, refin�ndola, puli�ndola y corrigiendo si es necesario; cualquiera sea el m�todo de ERS utilizado. EL analista siempre debe llegar a conocer la tem�tica y el problema que resolver, dominarlo, hasta cierto punto, hasta el �mbito que el futuro sistema a desarrollar lo abarque.
                                                </p>
                                            </div>
                                            <div id="paso2">
                                                <h2 class="StepTitle">2.- Clasificaci�n e identificaci�n de requisitos</h2>
                                                <p>
                                                    Requisitos de usuario: Los requisitos de usuario son frases en lenguaje natural junto a diagramas con los servicios que el sistema debe proporcionar, as� como las restricciones bajo las que debe operar. 
                                                    Requisitos de sistema: Los requisitos de sistema determinan los servicios del sistema y pero con las restricciones en detalle. Sirven como contrato.
                                                </p>
                                            </div>
                                            <div id="paso3">
                                                <h2 class="StepTitle">3.- Dise�o del sistema</h2>
                                                <p>
                                                    En ingenier�a de software, el dise�o es una fase de ciclo de vida del software. Se basa en la especificaci�n de requisitos producido por el an�lisis de los requisitos (fase de an�lisis), el dise�o define c�mo estos requisitos se cumplir�n, la estructura que debe darse al sistema de software para que se haga realidad. 
                                                    El dise�o sigue siendo una fase separada del la programaci�n o codificaci�n, esta �ltima corresponde a la traducci�n en un determinado lenguaje de programaci�n de las premisas adoptadas en el dise�o.
                                                </p>
                                            </div>
                                            <div id="paso4">
                                                <h2 class="StepTitle">4.- Codificaci�n del software</h2>
                                                <p>
                                                    Durante la fase de programaci�n, el c�digo puede adoptar varios estados, dependiendo de la forma de trabajo y del lenguaje elegido, a saber: 
                                                    C�digo fuente 
                                                    C�digo objeto 
                                                    C�digo ejecutable
                                                </p>
                                            </div>
                                            <div id="paso5">
                                                <h2 class="StepTitle">5.- Pruebas (unitarias y de integraci�n)</h2>
                                                <p>
                                                    Entre las diversas pruebas que se le efect�an al software se pueden distinguir principalmente: 
                                                    Pruebas unitarias 
                                                    Pruebas de integraci�n
                                                </p>
                                            </div>
                                            <div id="paso6">
                                                <h2 class="StepTitle">6.- Mantenimiento</h2>
                                                <p>
                                                    Esta fase es la �ltima (antes de iterar, seg�n el modelo empleado) que se aplica al ciclo de vida del desarrollo de software. La fase de mantenimiento es la que viene despu�s de que el software est� operativo y en producci�n.
                                                </p>
                                            </div>


                                        </div>
                                        <!-- End SmartWizard Content -->

                                        <!-- End SmartWizard Content -->
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
        <!-- jQuery Smart Wizard-->
        <script src="${pageContext.request.contextPath}/assets/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/assets/vendors/fastclick/lib/fastclick.js" type="text/javascript"></script>

    </body>
</html>
