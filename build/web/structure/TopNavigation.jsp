<%@page import="com.gestorsye.dto.UsersDto"%>
<%
        UsersDto usr2 = (UsersDto)session.getAttribute("usuarioSesion");
%>
<c:set var="context" value="${pageContext.request.contextPath}" />  
<!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="assets/images/img.jpg" alt=""><%= usr2.getName()%>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="ViewUser?id=<%=usr2.getIdUser()%>">Perfil</a></li>
                    <li><a href="javascript:;">Ayuda</a></li>
                    <li><a href="cerrarSesion.jsp"><i class="fa fa-sign-out pull-right"></i> Cerrar Sesión</a></li>
                  </ul>
                </li>

             
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->