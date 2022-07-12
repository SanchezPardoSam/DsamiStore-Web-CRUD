<%-- 
    Document   : recepcion
    Created on : 11-jul-2022, 23:37:32
    Author     : FIORELLA
--%>

<%@page import="java.util.Date"%>
<%@page import="Modelo.ProductoServicio"%>
<%@page import="webservice.Producto"%>
<%@page import="Modelo.ProveedorServicio"%>
<%@page import="Modelo.EmpleadoServicio"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="webservice.Proveedor"%>
<%@page import="webservice.Empleado"%>
<%@page import="webservice.Empresa"%>
<%@page import="webservice.RecepcionDetalle"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.RecepcionServicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%RecepcionDetalle recepcionDetalle = null;
    RecepcionServicio recepcionServi = new RecepcionServicio();
    EmpleadoServicio empleadoServi = new EmpleadoServicio();
    ProveedorServicio proveedorServi = new ProveedorServicio();
    ProductoServicio productoServi = new ProductoServicio();

    List<Empleado> empleado = null;
    List<Proveedor> proveedor = null;
    List<Producto> producto = null;
    //Date fecha = "0000-00-00";

    SimpleDateFormat dt1 = new SimpleDateFormat("yyyy-MM-dd");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Recepciones - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>

            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-recepciones py-2">
                            <h2>Recepciones</h2>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#agregar">Agregar
                                </button>
                            </div>

                            <div class="d-flex">
                                <input type="text" class="form-control me-2" placeholder="Buscar una recepcion" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                            </div>
                        </div>
                    </div>


                    <!-- Modal para Agregar-->
                    <div class="modal fade modal-lg" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form name="form-data" action="recepciones" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar Recepcion</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body row">
                                        <div class="form-group col-md-6">
                                            <div>
                                                <label for="agregar-idEmpleado" class="col-form-label">Empleado</label>
                                                <select class="form-select" id="agregar-idEmpleado" name="idEmpleado" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Empleado</option>
                                                    <%
                                                        empleado = empleadoServi.listarEmpleado();
                                                        for (Empleado emple : empleado) {
                                                            out.print("<option value=\"" + emple.getCodigoEmpleado() + "\" " + (recepcionDetalle != null && emple.getCodigoEmpleado() == recepcionDetalle.getRecepcion().getIdEmpleado() ? "selected" : "") + ">" + emple.getNombre() + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-idProveedor" class="col-form-label">Proveedor</label>
                                                <select class="form-select" id="agregar-idProveedor" name="idProveedor" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Proveedor</option>
                                                    <%
                                                        proveedor = proveedorServi.listarProveedor();
                                                        for (Proveedor provee : proveedor) {
                                                            out.print("<option value=\"" + provee.getCodigoProveedor() + "\" " + (recepcionDetalle != null && provee.getCodigoProveedor() == recepcionDetalle.getRecepcion().getIdProveedor() ? "selected" : "") + ">" + provee.getNombre() + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-fechaPedido" class="col-form-label">Fecha de pedido</label>
                                                <input type="date" class="form-control" id="agregar-fechaPedido" name="crearFechaPedido" placeholder="Agregar fecha de pedido" required>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-6">

                                            <div>
                                                <label for="agregar-idProducto" class="col-form-label">Producto</label>
                                                <select class="form-select" id="agregar-idProducto" name="idProducto" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Producto</option>
                                                    <%
                                                        List<Producto> listProd = productoServi.listarProductos();
                                                        for (Producto produ : listProd) {
                                                    %>
                                                    <option  value="<%= produ.getProductoID()%>"><%= produ.getNombre()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-Precio" class="col-form-label">Precio</label>
                                                <input type="number" step="any" class="form-control" id="agregar-Precio" name="crearPrecio" placeholder="Agregar Precio" required>
                                            </div>

                                            <div>
                                                <label for="agregar-Cantidad" class="col-form-label">Cantidad</label>
                                                <input type="number" class="form-control" id="agregar-Cantidad" name="crearCantidad" placeholder="Agregar Cantidad" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <input type="submit" class="btn btn-primary"  name="accion" value="Crear" />
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
                                        <th scope="col">Empleado</th>
                                        <th scope="col">Proveedor</th>
                                        <th scope="col">Fecha de pedido</th> 
                                        <th scope="col">Fecha de respuesta</th> 
                                        <th scope="col">Estado</th>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int idx = 0;
                                        RecepcionServicio r = new RecepcionServicio();
                                        List<RecepcionDetalle> listRec = r.listarRecepcion();
                                        for (RecepcionDetalle recep : listRec) {
                                    %>
                                    <tr>
                                        <td> <%= idx + 1%></td>
                                        <td> <%= recep.getRecepcion().getEmpleado().getNombre()%></td>
                                        <td> <%= recep.getRecepcion().getProveedor().getNombre()%></td>
                                        <td> <%= new SimpleDateFormat("yyyy-MM-dd").format(recep.getRecepcion().getFechaPedido().toGregorianCalendar().getTime())%></td>
                                        <td> <%= recep.getRecepcion().getFechaRespuesta()==null?"Pendiente": new SimpleDateFormat("yyyy-MM-dd").format(recep.getRecepcion().getFechaRespuesta().toGregorianCalendar().getTime())%></td>
                                        <td> <%= recep.getRecepcion().getEstadoRecepcion()%></td>
                                        <td> <%= recep.getProducto().getNombre()%></td>
                                        <td> <%= recep.getPrecioRecepcion()%></td>
                                        <td> <%= recep.getCantidadRecepcion()%></td>
                                        <td>
                                            <div class="d-flex justify-content-center">
                                                <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarRecep<%= recep.getIdRecepcionDetalle()%>">Editar</button>

                                                <!-- Ventana modal para editar -->
                                                <div class="modal fade modal-lg" id="editarRecep<%= recep.getIdRecepcionDetalle()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">

                                                    <div class="modal-dialog modal-dialog-centered">

                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="staticBackdropLabel">Editar Recepcion</h5>
                                                                <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>

                                                            <form name="form-data" action="recepciones" method="POST">
                                                                <input type="hidden" name="idRecepcion" value="<%= recep.getIdRecepcionDetalle()%>">

                                                                <div class="modal-body row" id="cont_modal">

                                                                    <div class="form-group col-md-6">

                                                                        <div>
                                                                            <label for="editar-idEmpleado" class="col-form-label">Empleado</label>
                                                                            <select class="form-select" id="editar-idEmpleado" name="idEmpleado" value="<%= recep.getRecepcion().getIdEmpleado()%>" aria-label=".form-select-sm example">
                                                                                <%
                                                                                    List<Empleado> listEmp = empleadoServi.listarEmpleado();
                                                                                    for (Empleado emplea : listEmp) {
                                                                                %>
                                                                                <option <%= recep.getRecepcion().getIdEmpleado().equals(emplea.getCodigoEmpleado()) ? "selected" : ""%> value="<%= emplea.getCodigoEmpleado()%>"><%= emplea.getNombre()%></option>
                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-idProveedor" class="col-form-label">Proveedor</label>
                                                                            <select class="form-select" id="editar-idProveedor" name="idProveedor" value="<%= recep.getRecepcion().getIdProveedor()%>" aria-label=".form-select-sm example">
                                                                                <%
                                                                                    List<Proveedor> listProv = proveedorServi.listarProveedor();
                                                                                    for (Proveedor prove : listProv) {
                                                                                %>
                                                                                <option <%= recep.getRecepcion().getIdProveedor().equals(prove.getCodigoProveedor()) ? "selected" : ""%> value="<%= prove.getCodigoProveedor()%>"><%= prove.getNombre()%></option>
                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-fechaPedido" class="col-form-label">Fecha de pedido</label>
                                                                            <input type="date" class="form-control" id="editar-fechaPedido" name="editarFechaPedido" value="<%=  new SimpleDateFormat("yyyy-MM-dd").format(recep.getRecepcion().getFechaPedido().toGregorianCalendar().getTime())%>" >
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-fechaRespuesta" class="col-form-label">Fecha de respuesta</label>
                                                                            <input type="date" class="form-control" id="editar-fechaRespuesta" name="editarFechaRespuesta" value="<%= recep.getRecepcion().getFechaRespuesta()==null? new SimpleDateFormat("yyyy-MM-dd").format(new Date().getTime()): new SimpleDateFormat("yyyy-MM-dd").format(recep.getRecepcion().getFechaRespuesta().toGregorianCalendar().getTime())%>">
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group col-md-6">

                                                                        <div>
                                                                            <label for="editar-idEstado" class="col-form-label">Estado</label>
                                                                            <select class="form-select" id="editar-idEstado" name="idEstado" value="<%= recep.getRecepcion().getEstadoRecepcion()%>" aria-label=".form-select-sm example">
                                                                                <option ><%= recep.getRecepcion().getEstadoRecepcion()==0 ? "Pendiente" : "Recibido"%></option>
                                                                                <option value="0">Pendiente</option>
                                                                                <option value="1">Recibido</option>
                                                                            </select>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-idProducto" class="col-form-label">Producto</label>
                                                                            <select class="form-select" id="editar-idProducto" name="idProducto" value="<%= recep.getIdProducto()%>" aria-label=".form-select-sm example">
                                                                                <%
                                                                                    
                                                                                    for (Producto produ : listProd) {
                                                                                %>
                                                                                <option <%= recep.getRecepcion().getIdProveedor().equals(produ.getProductoID()) ? "selected" : ""%> value="<%= produ.getProductoID()%>"><%= produ.getNombre()%></option>
                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-Precio" class="col-form-label">Precio</label>
                                                                            <input type="text" class="form-control" id="editar-Precio" name="editarPrecio" value="<%= recep.getPrecioRecepcion()%>" placeholder="Editar Precio" required>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-Cantidad" class="col-form-label">Cantidad</label>
                                                                            <input type="text" step="any" class="form-control" id="editar-Cantidad" name="editarCantidad" value="<%= recep.getCantidadRecepcion()%>" placeholder="Editar Cantidad" required>
                                                                        </div>
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

                                                <!---fin ventana editar--->

                                                <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarRecep<%=recep.getIdRecepcionDetalle()%>">Eliminar</button>

                                                <!-- Ventana modal para eliminar -->
                                                <div class="modal fade" id="eliminarRecep<%= recep.getIdRecepcionDetalle()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content">
                                                            <form name="form-data" action="recepciones" method="DELETE">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="myModalLabel">Deseas eliminar la recepcion de: </h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>

                                                                <div class="modal-body">
                                                                    <input type="hidden" name="idRecepcion" value="<%=recep.getIdRecepcionDetalle()%>">
                                                                    <strong style="text-align: center !important"><%= recep.getProducto().getNombre()%></strong>
                                                                </div>

                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                    <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= recep.getIdRecepcionDetalle()%>" name="accion" value="Borrar">Eliminar</button>
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
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>                        
                </div>
            </div>
        </div>
    </body>
</html>
