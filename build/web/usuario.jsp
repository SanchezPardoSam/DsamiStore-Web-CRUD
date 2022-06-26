<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="java.util.List"%>
<%@page import="webservice.Usuario"%>
<%@page import="webservice.Rol"%>
<%@page import="webservice.Empleado"%>
<%@page import="Modelo.UsuarioServicio"%>
<%@page import="Modelo.RolService"%>
<%@page import="Modelo.EmpleadoServicio"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="app">
            <div class="app-sidebar p-3 border-end ">
                <a class="d-flex text-decoration-none mb-4 " href="../categorias">
                    <h4 class="fs-4 fw-bold text-primary">D' Sami Store</h4>
                </a>
                <div class="nav nav-pills flex-column mb-auto">
                    <li class='nav-item'>
                        <a href="./categoria.jsp" class="nav-link link-dark">Categorías<a>
                    </li>
                    <li class='nav-item' >
                        <a href="./rol.jsp" class="nav-link link-dark">Roles<a>
                    </li>
                    <li>
                        <a href="./usuario.jsp" class="nav-link link-dark">Usuarios<a>
                    </li>
                </div>
            </div>
            
            <div class="app-content">
                <nav class="app-navbar navbar border-bottom bg-white">
                    <div class="container-fluid">
                        <div></div>
                        <div class="btn-group">
                            <p class="d-flex align-items-center h-100 mt-2 my-2 mx-2">Perfil</p>
                            <div class="rounded-circle overflow-hidden" style="width: 42px; height: 42px; cursor: pointer;"
                                 data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="https://www.pngkey.com/png/full/72-729716_user-avatar-png-graphic-free-download-icon.png"
                                     class="w-100 h-100"/>
                            </div>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li><a class="dropdown-item" href="#">Mi perfil</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                            </ul>
                        </div>

                    </div>
                </nav>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Usuarios</h2>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                           <div>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                              data-bs-target="#agregar">Agregar</button>
                           </div>
                           <div class="d-flex">
                               <input type="text" class="form-control me-2"
                                      placeholder="Buscar un usuario" aria-label="Recipient's username"
                                      aria-describedby="basic-addon2">
                               <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                           </div>
                       </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                          <form action="UsuarioControlador">
                            <div class="modal-header">
                              <h5 class="modal-title" id="staticBackdropLabel">Agregar usuario</h5>
                              <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                              </button>
                            </div>

                            <div class="modal-body">
                              <div class="mb-3">
                                <label for="agregar-nombre-usuario" class="form-label">Nombre de usuario</label>
                                <input type="text" class="form-control" id="agregar-nombre-usuario" name="nombreUsuario" placeholder="Agregar nombre de usuario" required>
                              </div>

                              <div class="mb-3">
                                <label for="agregar-clave" class="form-label">Clave</label>
                                <input type="password" class="form-control" id="agregar-clave" name="clave" placeholder="Agregar clave" required>
                              </div>

                              <div class="mb-3">
                                <label for="agregar-codigo-rol" class="col-form-label">Rol</label>
                                <select class="form-select" id="agregar-codigo-rol" name="codigoRol" aria-label=".form-select-sm example">
                                <option selected>Seleccionar rol</option>
                                    <%
                                        RolService r = new RolService();
                                        List<Rol> listRol = r.listarRol();

                                        for (Rol rol : listRol) {
                                    %>
                                    <option value="<%= rol.getCodigoRol()%>"><%= rol.getNombre()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                              </div>

                              <div>
                                <label for="agregar-codigo-empleado" class="col-form-label">Empleado</label>
                                <select class="form-select" id="agregar-codigo-empleado" name="codigoEmpleado" aria-label=".form-select-sm example">
                                  <option selected>Seleccionar empleado</option>
                                     <%
                                        EmpleadoServicio empleadoServicio = new EmpleadoServicio();
                                        List<Empleado> empleados = empleadoServicio.obtenerEmpleados();

                                        for (Empleado empleado : empleados) {
                                    %>
                                    <option value="<%= empleado.getCodigoEmpleado()%>"><%= empleado.getNombre() + " " + empleado.getApellidoPaterno() + " " + empleado.getApellidoMaterno() %></option>
                                    <%
                                        }
                                    %>
                                </select>
                              </div>
                            </div>

                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                              <button type="submit" class="btn btn-primary" name="accion" value="agregar">Aceptar</button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>

                    <!-- Mostrar tabla -->
                    <div class="card">
                        <div class="table-responsive">
                                <table class="table table-borderless">
                                    <thead>
                                     <tr>
                                        <th scope="col">N</th>
                                        <th scope="col">Nombre de usuario</th>
                                        <th scope="col">Empleado</th>
                                        <th scope="col">Rol</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int idx = 0;
                                        UsuarioServicio u = new UsuarioServicio();
                                        List<Usuario> listUser = u.obtenerUsuarios();
                                        for (Usuario user : listUser) {
                                    %>
                                    <tr>
                                        <td><%= idx+1%></td>
                                        <td><%= user.getNombreUsuario() %></td>
                                        <td><%= user.getEmpleado().getNombre() + " " + user.getEmpleado().getApellidoPaterno() + " " + user.getEmpleado().getApellidoMaterno() %></td>
                                        <td><%= user.getRol().getNombre()%></td>
                                        <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarUsuario<%= user.getCodigoUsuario()%>">
                                                        Editar
                                                    </button>

                                                    <!--ventana para Update--->
                                                    <div class="modal fade" id="editarUsuario<%= user.getCodigoUsuario()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaUsuario">
                                                      <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                          <div class="modal-header">
                                                            <h5 class="modal-title" id="staticBackdropLabel">Editar usuario</h5>
                                                            <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                            </button>
                                                          </div>

                                                          <form action="UsuarioControlador">
                                                            <div class="modal-body" id="cont_modal">
                                                              <input type="hidden" name="codigoUsuario" value="<%= user.getCodigoUsuario() %>">

                                                              <div class="mb-3">
                                                                <label class="col-form-label">Codigo</label>
                                                                <input type="text" class="form-control" value="<%= user.getCodigoUsuario() %>" disabled>
                                                              </div>

                                                              <div class="mb-3">
                                                                <label for="editar-nombre-usuario" class="col-form-label">Nombre de usuario</label>
                                                                <input type="text" id="editar-nombre-usuario" name="nombreUsuario" class="form-control" value="<%= user.getNombreUsuario()%>" placeholder="Ingregar nombre de usuario" required>
                                                              </div>

                                                              <div class="mb-3">
                                                                <label for="editar-clave" class="form-label">Clave</label>
                                                                <input type="password" class="form-control" id="editar-clave" name="clave" value="<%= user.getClave()%>" placeholder="Ingregar clave" required>
                                                              </div>

                                                              <div class="mb-3">
                                                                <label for="editar-codigo-rol" class="col-form-label">Rol</label>
                                                                <select class="form-select" id="editar-codigo-rol" name="codigoRol" aria-label=".form-select-sm example">
                                                                    <%
                                                                        RolService r2 = new RolService();
                                                                        List<Rol> listRol2 = r2.listarRol();

                                                                        for (Rol rol : listRol2) {
                                                                    %>
                                                                    <option <%= user.getRol().getCodigoRol().equals(rol.getCodigoRol()) ? "selected" : "" %> value="<%= rol.getCodigoRol()%>"><%= rol.getNombre()%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select>
                                                              </div>

                                                              <div>
                                                                <label for="editar-codigo-empleado" class="col-form-label">Empleado</label>
                                                                <select class="form-select" id="editar-codigo-empleado" name="codigoEmpleado" disabled aria-label=".form-select-sm example">
                                                                    <%
                                                                        EmpleadoServicio empleadoServicio2 = new EmpleadoServicio();
                                                                        List<Empleado> empleados2 = empleadoServicio2.obtenerEmpleados();

                                                                        for (Empleado empleado : empleados2) {
                                                                    %>
                                                                    <option <%= user.getCodigoEmpleado().equals(empleado.getCodigoEmpleado()) ? "selected" : "" %> value="<%= empleado.getCodigoEmpleado()%>"><%= empleado.getNombre() + " " + empleado.getApellidoPaterno() + " " + empleado.getApellidoMaterno() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select>
                                                              </div>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                                <button type="submit" class="btn btn-primary" name="accion" value="editar">Aceptar</button>
                                                            </div>
                                                          </form>

                                                        </div>
                                                      </div>
                                                    </div>
                                                    <!---fin ventana Update --->

                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarUsuario<%= user.getCodigoUsuario()%>">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminarUsuario<%= user.getCodigoUsuario()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                      <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content">
                                                          <form name="form-data" action="UsuarioControlador" method="DELETE">
                                                            <div class="modal-header">
                                                              <h5 class="modal-title" id="myModalLabel">Deseas eliminar el Usuario</h5>
                                                              <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                              </button>
                                                            </div>

                                                            <div class="modal-body">
                                                              <input type="hidden" name="codigoUsuario" value="<%= user.getCodigoUsuario()%>">
                                                              <strong style="text-align: center !important">
                                                                <%= user.getNombreUsuario()%>
                                                              </strong>
                                                            </div>
                                                            <div class="modal-footer">
                                                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                              <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= user.getCodigoUsuario()%>" name="accion" value="eliminar" >Borrar</button>
                                                            </div>
                                                          </form>
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <!---fin ventana eliminar--->
                                                </div>
                                        </td>
                                    </tr>
                                    <%idx++; }
                                    %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>   
    </body>
</html>
