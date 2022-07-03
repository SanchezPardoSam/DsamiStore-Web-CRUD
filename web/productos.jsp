<%--
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="webservice.Moneda"%>
<%@page import="webservice.Almacen"%>
<%@page import="webservice.Marca"%>
<%@page import="webservice.Producto"%>
<%@page import="Modelo.ProductoServicio"%>
<%@page import="java.util.List"%>
<%@page import="webservice.Categoria"%>
<%@page import="Modelo.CategoriaService"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Productos - D'Samistore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>

            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Producto</h2>
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
                          <form action="ProductoControlador">
                            <div class="modal-header">
                              <h5 class="modal-title" id="staticBackdropLabel">Agregar producto</h5>
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
                                  <label for="agregar-descripcion" class="col-form-label">DescripciÃ³n</label>
                                  <input type="text" class="form-control" id="agregar-descripcion" name="crearDescripcion" placeholder="Agregar descripciÃ³n" required>
                                </div>
                                <div class="mb-3">
                                  <label for="agregar-codigo" class="col-form-label">CÃ³digo de barras</label>
                                  <input type="text" class="form-control" id="agregar-codigo" name="crearCodigo" placeholder="Agregar codigo de barras" required autofocus>
                                </div>
                                  <div class="mb-3">
                                  <label for="agregar-precio" class="col-form-label">Precio</label>
                                  <input type="number" class="form-control" id="agregar-precio" name="crearPrecio" placeholder="Precio" required autofocus>
                                </div>
                                <div class="mb-3">
                                  <label for="agregar-marca" class="col-form-label">Marca</label>

                                  <select type="text"  class="form-select" id="agregar-marca" name="crearMarca" placeholder="Marca" required autofocus>
                                      <option hidden>Selecciona una marca</option>
                                      <%
                                            ProductoServicio r = new ProductoServicio();
                                            List<Marca> listMarca = r.listarMarca();

                                            for (Marca m : listMarca) {
                                        %>
                                      <option value="<%= m.getNombre()%>"><%= m.getNombre()%></option>
                                        <%
                                            }
                                        %>

                                  </select>

                                </div>
                                <div class="mb-3">
                                  <label for="agregar-categoria" class="col-form-label">Categoria</label>
                                  <select class="form-select" id="agregar-categoria" name="crearCategoria" required autofocus>
                                      <option hidden>Seleccionar categoria</option>
                                       <%

                                            List<Categoria> listCat = r.listarCategoria();

                                            for (Categoria c : listCat) {
                                        %>
                                      <option value="<%= c.getNombre()%>"><%= c.getNombre()%></option>
                                        <%
                                            }
                                        %>
                                  </select>
                                </div>
                                <div class="mb-3">
                                  <label for="agregar-almacen" class="col-form-label">AlmacÃ©n</label>
                                  <select class="form-select" id="agregar-almacen" name="crearAlmacen" required autofocus>
                                      <option hidden>Seleccionar AlmacÃ©n</option>
                                      <%

                                            List<Almacen> listAlmacen = r.listarAlmacen();

                                            for (Almacen m : listAlmacen) {
                                        %>
                                      <option value="<%= m.getNombre()%>"><%= m.getNombre()%></option>
                                        <%
                                            }
                                        %>
                                  </select>
                                </div>
                                <div class="mb-3">
                                  <label for="agregar-moneda" class="col-form-label">Moneda</label>
                                  <select class="form-select" id="agregar-moneda" name="crearMoneda" required autofocus>
                                      <option hidden>Seleccionar Moneda</option>
                                      <%

                                            List<Moneda> listMoneda = r.listarMoneda();

                                            for (Moneda m : listMoneda) {
                                        %>
                                      <option value="<%= m.getNombre()%>"><%= m.getNombre()%></option>
                                        <%
                                            }
                                        %>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                              <input type="submit" class="btn btn-primary" name="accion" value="agregar" />
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
                                        <th scope="col">Codigo de barras</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Marca</th>
                                        <th scope="col">Categoria</th>
                                        <th scope="col">Almacen</th>
                                        <th scope="col">Moneda</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                       int idx = 0;
                                        ProductoServicio c = new ProductoServicio();
                                        List<Producto> listPro = c.listarProductos();
                                        for (Producto pro : listPro) {


                                    %>
                                    <tr>
                                        <td> <%= idx + 1%></td>
                                        <td> <%= pro.getNombre()%></td>
                                        <td> <%= pro.getDescripcion()%></td>
                                        <td> <%= pro.getCodBarras() %></td>
                                        <td> <%= pro.getPrecio() %></td>
                                        <td> <%= pro.getMarcaID() %></td>
                                        <td> <%= pro.getCategoriaID() %></td>
                                        <td> <%= pro.getAlmacenID()%></td>
                                        <td> <%= pro.getMonedaID()%></td>

                                        <td>
                                            <div class="d-flex justify-content-center">
                                                <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarProducto<%= pro.getProductoID() %>">
                                                    Editar
                                                </button>
                                                <!--ventana para Update--->
                                                <div class="modal fade" id="editarProducto<%= pro.getProductoID()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true"
                                                     aria-labelledby="editarProducto">
                                                  <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h5 class="modal-title" id="staticBackdropLabel">Editar producto</h5>
                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                        </button>
                                                      </div>

                                                      <form action="ProductoControlador">
                                                        <input type="hidden" name="productoID" value="<%= pro.getProductoID()%>">

                                                        <div class="modal-body" id="cont_modal">
                                                          <div class="row">
                                                              <input type="hidden" name="crearProducto" value="<%= pro.getProductoID() %>">

                                                            <div class="mb-3">
                                                              <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                              <input type="text" class="form-control" id="editar-nombre" name="crearNombre" value="<%= pro.getNombre()%>" placeholder="Agregar nombre" required autofocus>
                                                            </div>
                                                            <div>
                                                              <label for="agregar-descripcion" class="col-form-label">DescripciÃ³n</label>
                                                              <input type="text" class="form-control" id="agregar-descripcion" name="crearDescripcion" value="<%= pro.getDescripcion()%>" placeholder="Agregar descripciÃ³n" required>
                                                            </div>
                                                            <div class="mb-3">
                                                              <label for="agregar-codigo" class="col-form-label">CÃ³digo de barras</label>
                                                              <input type="text" class="form-control" id="agregar-codigo" name="crearCodigo" value="<%= pro.getCodBarras()%>" placeholder="Agregar codigo de barras" required autofocus>
                                                            </div>
                                                              <div class="mb-3">
                                                              <label for="agregar-precio" class="col-form-label">Precio</label>
                                                              <input type="number" class="form-control" id="agregar-precio" name="crearPrecio" value="<%= pro.getPrecio()%>" placeholder="Precio" required autofocus>
                                                            </div>
                                                            <div class="mb-3">
                                                              <label for="agregar-marca" class="col-form-label">Marca</label>
                                                              <select type="text"  class="form-select" id="agregar-marca" name="crearMarca" placeholder="Marca" required autofocus>
                                                                  <option hidden>Selecciona una marca</option>
                                                                   <%
                                                                        for (Marca m : listMarca) {
                                                                    %>
                                                                  <option <%= pro.getMarcaID().equals(m.getNombre()) ? "selected" : "" %> value="<%= m.getNombre()%>"><%= m.getNombre()%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                              </select>
                                                            </div>
                                                            <div class="mb-3">
                                                              <label for="agregar-categoria" class="col-form-label">Categoria</label>
                                                              <select class="form-select" id="agregar-categoria" name="crearCategoria" required autofocus>
                                                                  <option hidden>Seleccionar categoria</option>
                                                                  <%

                                                                         listCat = r.listarCategoria();

                                                                        for (Categoria cat : listCat) {
                                                                    %>
                                                                  <option <%= pro.getCategoriaID().equals(cat.getNombre()) ? "selected" : "" %> value="<%= cat.getNombre()%>"><%= cat.getNombre()%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                              </select>
                                                            </div>
                                                            <div class="mb-3">
                                                              <label for="agregar-almacen" class="col-form-label">AlmacÃ©n</label>
                                                              <select class="form-select" id="agregar-almacen" name="crearAlmacen" required autofocus>
                                                                  <option hidden>Seleccionar AlmacÃ©n</option>
                                                                  <%

                                                                        listAlmacen = r.listarAlmacen();

                                                                        for (Almacen al : listAlmacen) {
                                                                    %>
                                                                  <option <%= pro.getAlmacenID().equals(al.getNombre()) ? "selected" : "" %> value="<%= al.getNombre()%>"><%= al.getNombre()%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                              </select>
                                                            </div>
                                                            <div class="mb-3">
                                                              <label for="agregar-moneda" class="col-form-label">Moneda</label>
                                                              <select class="form-select" id="agregar-moneda" name="crearMoneda" required autofocus>
                                                                  <option hidden>Seleccionar Moneda</option>
                                                                   <%

                                                                        listMoneda = r.listarMoneda();

                                                                        for (Moneda m : listMoneda) {
                                                                    %>
                                                                  <option <%= pro.getMonedaID().equals(m.getNombre()) ? "selected" : "" %> value="<%= m.getNombre()%>"><%= m.getNombre()%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                              </select>
                                                            </div>
                                                          </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                          <input  type="submit" name="accion" value="editar" class="btn btn-primary" />
                                                        </div>
                                                      </form>
                                                    </div>
                                                  </div>
                                                </div>
                                                <!---fin ventana Update --->

                                                <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarPro<%= pro.getProductoID()%>">Eliminar</button>

                                                <!-- Ventana modal para eliminar -->
                                                <div class="modal fade" id="eliminarPro<%= pro.getProductoID()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                  <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">

                                                        <form  name="form-data" action="ProductoControlador" method="DELETE"/>

                                                        <div class="modal-header">
                                                          <h5 class="modal-title" id="myModalLabel">Deseas eliminar el producto</h5>
                                                          <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                        </div>

                                                        <div class="modal-body">
                                                          <input type="hidden" name="productoID" value="<%=pro.getProductoID()%>">
                                                          <strong style="text-align: center !important">
                                                              <%= pro.getNombre() %>
                                                          </strong>
                                                        </div>

                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                          <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= pro.getProductoID()%>"
                                                                  name="accion" value="eliminar">Borrar</button>
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
