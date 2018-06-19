<%@page import="com.gestorsye.dto.UsersDto"%>
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
            ArrayList<UsersDto> dtos = (ArrayList<UsersDto>) request.getSession().getAttribute("dtos");
        %>
        <title>Gestor Sye | </title>

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
                            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Gestor Sye</span></a>
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
                                <h3>Usuarios</h3>
                            </div>

                        </div>
                        <br/>
                        <br/>


                        <div class="clearfix"></div>
                        <!--Aqui va todo el contenido nuevo-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">                   
                                    <div class="col-md-10"> <h2>Usuarios</h2> </div>
                                    <div class="col-md-2">
                                    <a href="#" onclick="openModalNewUSer()" class="btn btn-danger btn-xs" ><i class="fa fa-plus"></i> Añadir nuevo usuario </a></td>
                                    </div>
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Nombre</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Area</th>
                                                <th scope="col">Usuario</th>
                                                <th scope="col">Password</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                for (int i = 0; i < dtos.size(); i++) {
                                            %>
                                            <tr>
                                                <td><a><%= dtos.get(i).getName()%></a></td>
                                                <td><a><%= dtos.get(i).getEmail()%></a></td>
                                                <td><a><%= dtos.get(i).getArea()%></a></td>
                                                <td><a><%= dtos.get(i).getUser()%></a></td>
                                                <td><a><%= dtos.get(i).getPass()%></a></td>

                                                <td><button type="button" class="btn btn-success btn-xs"><%=dtos.get(i).getStatus()%></button></td>
                                                <td><a href="ViewProject?id=<%=dtos.get(i).getId_user()%>" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                    <a href="ViewProject?id=<%=dtos.get(i).getId_user()%>" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                    <a href="DeleteProjects?id=<%=dtos.get(i).getId_user()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>

                
                        <!-- Modal para añadir nuevo usuario-->
                        <div class="modal fade" id="modalNewUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">New User</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <form action="InsertUsers" method="post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                    <div class="form-group">
                                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Perfil</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select name="perfil" class="select2_single form-control" tabindex="-1">
                                                <option></option>
                                                <option value="1">Perfil 1</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="nombre" required="required" class="form-control col-md-7 col-xs-12" nam>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Email<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="email" required="required" class="form-control col-md-7 col-xs-12" nam>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Área</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select name="area" class="select2_single form-control" tabindex="-1">
                                                <option></option>
                                                <option value="area1">Area 1</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Usuario<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="usuario" required="required" class="form-control col-md-7 col-xs-12" nam>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Contraseña<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="pass" required="required" class="form-control col-md-7 col-xs-12" nam>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Status<span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="status" required="required" class="form-control col-md-7 col-xs-12" nam>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                      <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </form>
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
        
        <script>
            function openModalNewUSer(){
                $('#modalNewUser').modal('show')
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
