<%@page import="com.gestorsye.dto.UsersDto"%>
<%
    UsersDto dto = (UsersDto) request.getSession().getAttribute("user");
%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!-- menu profile quick info -->
<div class="profile clearfix">
    <div class="profile_pic">
        <img src="assets/images/img.jpg" alt="..." class="img-circle profile_img">
        
    </div>
    <div class="profile_info">
        <span>Welcome,</span>
        <h2><%= dto.getUser()%></h2>
    </div>
    <div class="clearfix"></div>
</div>
<!-- /menu profile quick info -->

<br />

<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
            <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="dashboard.jsp">Dashboard</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-edit"></i>Proyectos<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="ViewParticipants">Crear Proyecto</a></li>
                    <li><a href="${pageContext.request.contextPath}/ProjectsController">Visualizar</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-desktop"></i>Tareas<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="tasks.jsp">Tareas pendientes</a></li>
                    <li><a href="ViewTasks">Administrar Tareas</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-table"></i> Trabajo <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="logwork.jsp">Registrar trabajo</a></li>
                    <li><a href="tables_dynamic.html">Ver trabajo</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-bar-chart-o"></i>Estadisticas<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="chartjs.html">Graficas</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-clone"></i>Historial<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="prueba.jsp">Prueba</a></li>
                     <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                </ul>
            </li>
            <li><a><i class="fa fa-users"></i>Usuarios<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="${pageContext.request.contextPath}/UsersController">Administrar usuarios</a></li>
                </ul>
            </li>
            <%
            int valor =0;
            if(valor>0){
            %>
            <li><a><i class="fa fa-clone"></i>Incidencias<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                    <li><a href="fixed_sidebar.html">Incidencias</a></li>
                </ul>
            </li>
            <%
            }
            %>
        </ul>
    </div>

</div>
<!-- /sidebar menu -->

<!-- /menu footer buttons -->
<div class="sidebar-footer hidden-small">
    <a data-toggle="tooltip" data-placement="top" title="Settings">
        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="Lock">
        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
    </a>
    <a data-toggle="tooltip" data-placement="top" title="Logout" href="index.jsp">
        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
    </a>
</div>
<!-- /menu footer buttons -->