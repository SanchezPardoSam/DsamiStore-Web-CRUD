<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


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
        <%@include file="/includes/head.jsp"%>
        <title>Roles - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>
            
            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Roles</h2>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                           <div>
                               <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#agregar">Agregar
                               </button>
                           </div>
                           <div class="d-flex">
                               <input type="text" class="form-control me-2"
                                      placeholder="Buscar un rol" aria-label="Recipient's username"
                                      aria-describedby="basic-addon2">
                               <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                           </div>
                       </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                          <form name="form-data" action="../../controllers/roles/agregar.php" method="POST">
                            <div class="modal-header">
                              <h5 class="modal-title" id="staticBackdropLabel">Agregar rol</h5>
                              <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                              </button>
                            </div>

                            <div class="modal-body">
                              <div>
                                <label for="agregar-nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="agregar-nombre" name="nombre" placeholder="Agregar nombre" required autofocus>
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
                                            <th scope="col">Nombre</th>
                                            <th scope="col" class="text-center">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        int idx = 0;
                                        RolService r = new RolService();
                                        List<Rol> listRol = r.listarRol();
                                        for (Rol rol : listRol) {
                                    %>
                                <tr>
                                    <td> <%= idx + 1%></td>
                                    <td> <%= rol.getNombre()%></td>
                                    <td>
                                        <div class="d-flex justify-content-center">
                                            <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarRol<%= rol.getCodigoRol()%>">
                                                Editar
                                            </button>

                                                <!--ventana para Update--->
                                            <div class="modal fade" id="editarRol<%= rol.getCodigoRol()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                              <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar Rol</h5>
                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                    </button>
                                                  </div>

                                                  <form method="POST" action="../../controllers/roles/editar.php">
                                                    <input type="hidden" name="idRol" value="<%= rol.getCodigoRol()%>">
                                                    <div class="modal-body" id="cont_modal">
                                                      <div>
                                                        <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                        <input type="text" class="form-control" id="editar-nombre" name="nombre" value="<%= rol.getNombre()%>" placeholder="Agregar nombre" required autofocus>
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

                                            <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarRol<%= rol.getCodigoRol()%>">Eliminar</button>

                                            <!-- Ventana modal para eliminar -->
                                            <div class="modal fade" id="eliminarRol<%= rol.getCodigoRol()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                  <form name="form-data" action="../../controllers/roles/eliminar.php" method="DELETE">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" id="myModalLabel">Deseas eliminar el rol </h5>
                                                      <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                      </button>
                                                    </div>

                                                    <div class="modal-body">
                                                      <input type="hidden" name="idRol" value="<%= rol.getCodigoRol()%>">
                                                      <strong style="text-align: center !important">
                                                        <%= rol.getNombre()%>
                                                      </strong>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                      <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= rol.getCodigoRol()%>">Borrar</button>
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
    </body>
</html>
