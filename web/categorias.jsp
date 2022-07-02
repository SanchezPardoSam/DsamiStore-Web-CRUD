<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="java.util.List"%>
<%@page import="webservice.Categoria"%>
<%@page import="Modelo.CategoriaService"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Categorias - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>

            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Categorias</h2>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                           <div>
                               <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#agregar">Agregar
                               </button>
                           </div>
                           <div class="d-flex">
                               <input type="text" class="form-control me-2"
                                      placeholder="Buscar una categoria" aria-label="Recipient's username"
                                      aria-describedby="basic-addon2">
                               <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                           </div>
                       </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                          <form action="Controlador">
                            <div class="modal-header">
                              <h5 class="modal-title" id="staticBackdropLabel">Agregar categoria</h5>
                              <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                              </button>
                            </div>

                            <div class="modal-body">
                              <div class="row">
                                <div class="mb-3">
                                  <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                  <input type="text" class="form-control" id="agregar-nombre" name="crearNombre" placeholder="Agregar nombre" required autofocus>
                                </div>
                                <div>
                                  <label for="agregar-descripcion" class="col-form-label">Descripción</label>
                                  <input type="text" class="form-control" id="agregar-descripcion" name="crearDescripcion" placeholder="Agregar descripción" required>
                                </div>
                              </div>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                              <input type="submit" class="btn btn-primary" name="accion" value="crear" />
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
                                        <th scope="col">Descripcion</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                       int idx = 0;
                                         CategoriaService c = new CategoriaService();
                                        List<Categoria> listCat = c.listar();
                                        for (Categoria ca : listCat) {


                                    %>
                                    <tr>
                                        <td> <%= idx + 1%></td>
                                        <td> <%= ca.getNombre()%></td>
                                        <td> <%= ca.getDescripcion()%></td>
                                        <td>
                                            <div class="d-flex justify-content-center">
                                                <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarCat<%= ca.getId()%>">
                                                    Editar
                                                </button>

                                                <!--ventana para Update--->
                                                <div class="modal fade" id="editarCat<%= ca.getId()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                                  <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h5 class="modal-title" id="staticBackdropLabel">Editar categoria</h5>
                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                        </button>
                                                      </div>

                                                      <form action="Controlador">
                                                        <input type="hidden" name="idCategoria" value="<%= ca.getId()%>">
                                                        <div class="modal-body" id="cont_modal">
                                                          <div class="mb-3">
                                                            <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                            <input type="text" class="form-control" id="editar-nombre" name="nombre" placeholder="Agregar nombre" value="<%= ca.getNombre()%>" required="true">
                                                          </div>

                                                          <div>
                                                            <label for="editar-descripcion" class="col-form-label">Descripción</label>
                                                            <input type="text" class="form-control" id="editar-descripcion" name="descripcion" placeholder="Agregar descripción" value="<%= ca.getDescripcion()%>" placeholder=""required="true">
                                                          </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                          <input  type="submit" name="accion" value="Editar" class="btn btn-primary" />
                                                        </div>
                                                      </form>
                                                    </div>
                                                  </div>
                                                </div>
                                                <!---fin ventana Update --->

                                                <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarCat<%= ca.getId()%>">Eliminar</button>

                                                <!-- Ventana modal para eliminar -->
                                                <div class="modal fade" id="eliminarCat<%= ca.getId()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                  <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                      <form name="form-data" action="Controlador" method="DELETE">
                                                        <div class="modal-header">
                                                          <h5 class="modal-title" id="myModalLabel">Deseas eliminar la categoria</h5>
                                                          <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                        </div>

                                                        <div class="modal-body">
                                                          <input type="hidden" name="idCategoria" value="<%= ca.getId()%>">
                                                          <strong style="text-align: center !important">
                                                              <%= ca.getNombre() %>
                                                          </strong>
                                                        </div>
                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                          <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= ca.getId()%>" name="accion" value="Eliminar" >Borrar</button>
                                                        </div>
                                                      </form>
                                                    </div>
                                                  </div>
                                                </div>
                                                <!---fin ventana eliminar--->
                                            </div>

                                        </td>

                                    </tr>
                                    <%
                                        idx++;
                                    }%>
                                </tbody>
                            </table>
                        </div>
                    </div>                        
                </div>                        
            </div>
        </div>
    </body>
</html>
