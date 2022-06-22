<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="webservice.Usuario"%>
<%@page import="Modelo.UsuarioService"%>
<%@page import="webservice.Rol"%>
<%@page import="Modelo.RolService"%>
<%@page import="java.util.List"%>
<%@page import="webservice.Categoria"%>
<%@page import="Modelo.CategoriaService"%>

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
                </div>

                <!-- Modal para Agregar-->
                <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <form name="form-data" action="../../controllers/usuarios/agregar.php" method="POST">
                        <div class="modal-header">
                          <h5 class="modal-title" id="staticBackdropLabel">Agregar usuario</h5>
                          <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                          </button>
                        </div>

                        <div class="modal-body">
                          <div class="mb-3">
                            <label for="agregar-nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="agregar-nombre" name="nombre" placeholder="Agregar nombre" required autofocus>
                          </div>

                          <div class="mb-3">
                            <label for="agregar-usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" id="agregar-usuario" name="username" placeholder="Agregar usuario" required>
                          </div>

                          <div class="mb-3">
                            <label for="agregar-email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="agregar-email" name="email" placeholder="Agregar email" required>
                          </div>

                          <div class="mb-3">
                            <label for="agregar-password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="agregar-password" name="password" placeholder="Agregar contraseña" required>
                          </div>

                          <div class="mb-3">
                            <label for="agregar-idRol" class="col-form-label">Rol</label>
                            <select class="form-select" id="agregar-idRol" name="idRol" aria-label=".form-select-sm example" ">
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
                            <label for="agregar-idEmpleado" class="col-form-label">Empleado</label>
                            <select class="form-select" id="agregar-idEmpleado" name="idEmpleado" aria-label=".form-select-sm example">
                              <option selected>Seleccionar empleado</option>
                              <!--
                                <?php
                                  foreach ($empleados as $empleado) {
                                        echo "<option " . " value=" . $empleado->id  . ">" .$empleado->nombre  . "</option>";
                                          }
                              ?>
                              -->
                            </select>
                          </div>
                        </div>

                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                          <button type="submit" class="btn btn-primary" id="btnEnviar">Aceptar</button>
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
                                    <th scope="col">Usuario</th>
                                    <th scope="col">Empleado</th>
                                    <th scope="col">Rol</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int idx = 0;
                                    UsuarioService u = new UsuarioService();
                                    List<Usuario> listUser = u.listarUsuario();
                                    for (Usuario user : listUser) {
                                %>
                                <tr>
                                    <td> <%= idx+1%></td>
                                    <td> <%= user.getNombreUsuario() %></td>
                                     <td> <%= user.getEmpleado().getNombre()%></td>
                                      <td> <%= user.getRol().getNombre()%></td>
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

                                                      <form method="POST" action="../../controllers/usuarios/editar.php">
                                                        <input type="hidden" name="idUsuario" value="<?php echo $usuario->id; ?>">
                                                        <div class="modal-body" id="cont_modal">
                                                          <div class="mb-3">
                                                            <label for="recipient-name" class="col-form-label">Usuario</label>
                                                            <input type="text" name="username" class="form-control" value="<%= user.getNombreUsuario()%>" placeholder="Agregar usuario" required>
                                                          </div>

                                                          <div class="mb-3">
                                                            <label for="editar-password" class="form-label">Contraseña</label>
                                                            <input type="password" class="form-control" id="editar-password" name="password" value="<%= user.getClave()%>" placeholder="Agregar contraseña" required>
                                                          </div>

                                                          <div class="mb-3">
                                                            <label for="agregar-idRol" class="col-form-label">Rol</label>
                                                            <select class="form-select" id="agregar-idRol" name="idRol" aria-label=".form-select-sm example">
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
                                                            <label for="agregar-idEmpleado" class="col-form-label">Empleado</label>
                                                            <select class="form-select" id="agregar-idEmpleado" name="idEmpleado" aria-label=".form-select-sm example">
                                                                <!--
                                                                <?php
                                                                  foreach ($empleados as $empleado) {
                                                                    $selected = $empleado->id == $usuario->empleado->id ? "selected" : "";
                                                                      echo "<option " . $selected . " value=" . $empleado->id  . ">" .$empleado->nombre  . "</option>";
                                                                          }
                                                              ?>
                                                                -->
                                                            </select>
                                                          </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                          <button type="submit" class="btn btn-primary">Aceptar</button>
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
                                                      <form name="form-data" action="../../controllers/usuarios/eliminar.php" method="DELETE">
                                                        <div class="modal-header">
                                                          <h5 class="modal-title" id="myModalLabel">Deseas eliminar el Usuario</h5>
                                                          <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                        </div>

                                                        <div class="modal-body">
                                                          <input type="hidden" name="idUsuario" value="<?php echo $usuario->id; ?>">
                                                          <strong style="text-align: center !important">
                                                            <%= user.getNombreUsuario()%>
                                                          </strong>
                                                        </div>
                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                          <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= user.getCodigoUsuario()%>">Borrar</button>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>   
    </body>
</html>
