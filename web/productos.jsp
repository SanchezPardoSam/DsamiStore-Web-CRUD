<%--
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Productos - D'Samistore</title>
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.3.7/JsBarcode.all.min.js"></script>
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


                            <form action="productos" class="d-flex">
                                <input type="hidden" name="pagina" value="${pagina}" />
                                <input type="hidden" name="cantidad" value="${cantidad}" />
                                <input type="search" name="q" value="${q}" placeholder="Buscar un producto" class="form-control me-2">
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>
                        </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form action="productos" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar producto</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="mb-3">
                                                <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                <input type="text" class="form-control" id="agregar-nombre" name="crearNombre" placeholder="Agregar nombre" required autofocus>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-descripcion" class="col-form-label">Descripcion</label>
                                                <input type="text" class="form-control" id="agregar-descripcion" name="crearDescripcion" placeholder="Agregar descripcion" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-codigo" class="col-form-label">Codigo de barras</label>
                                                <input type="text" class="form-control" id="agregar-codigo" name="crearCodigo" placeholder="Agregar codigo de barras" required autofocus>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-precio" class="col-form-label">Precio</label>
                                                <input type="number" class="form-control" id="agregar-precio" name="crearPrecio" placeholder="Precio" required autofocus>
                                            </div>

                                            <div class="mb-3">
                                                <label for="agregar-marca" class="col-form-label">Marca</label>

                                                <select type="text"  class="form-select" id="agregar-marca" name="crearMarca" placeholder="Marca" required autofocus>
                                                    <option hidden>Seleccionar marca</option>
                                                    <c:forEach var="marca" items="${marcas}">
                                                        <option value="${marca.getId()}">${marca.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="mb-3">
                                                <label for="agregar-categoria" class="col-form-label">Categoria</label>
                                                <select class="form-select" id="agregar-categoria" name="crearCategoria" required autofocus>
                                                    <option hidden>Seleccionar categoria</option>
                                                    <c:forEach var="categoria" items="${categorias}">
                                                        <option value="${categoria.getId()}">${categoria.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-almacen" class="col-form-label">Almacen</label>
                                                <select class="form-select" id="agregar-almacen" name="crearAlmacen" required autofocus>
                                                    <option hidden>Seleccionar almacen</option>
                                                    <c:forEach var="almacen" items="${almacenes}">
                                                        <option value="${almacen.getIdAlmacen()}">${almacen.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-moneda" class="col-form-label">Moneda</label>
                                                <select class="form-select" id="agregar-moneda" name="crearMoneda" required autofocus>
                                                    <option hidden>Seleccionar moneda</option>
                                                    <c:forEach var="moneda" items="${monedas}">
                                                        <option value="${moneda.getIdMoneda()}">${moneda.getNombre()}</option>
                                                    </c:forEach>
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
                                        <th scope="col">Precio</th>
                                        <th scope="col">Marca</th>
                                        <th scope="col">Categoria</th>
                                        <th scope="col">Almacen</th>
                                        <th scope="col">Moneda</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="producto" items="${productos}" varStatus="loop">
                                        <tr>
                                            <td>${((pagina * cantidad) - cantidad + 1)  + loop.index}</td>
                                            <td>${producto.getNombre()}</td>
                                            <td>${producto.getDescripcion()}</td>
                                            <td>${producto.getPrecio()}</td>
                                            <td>${producto.getMarcaID()}</td>
                                            <td>${producto.getCategoriaID()}</td>
                                            <td>${producto.getAlmacenID()}</td>
                                            <td>${producto.getMonedaID()}</td>

                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#codBarras${producto.getProductoID()}">
                                                        Ver código
                                                    </button>
                                                    <div class="modal fade" id="codBarras${producto.getProductoID()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true"
                                                         aria-labelledby="codBarras">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Código de barras del producto</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body text-center" id="content-barras">
                                                                    <p>${producto.getNombre()}</p>
                                                                    <svg id="barcode${producto.getCodBarras()}"></svg>
                                                                    <script>
                                                                        JsBarcode('#barcode${producto.getCodBarras()}', "${producto.getCodBarras()}");
                                                                    </script>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarProducto${producto.getProductoID()}">
                                                        Editar
                                                    </button>
                                                    <!--ventana para Update--->
                                                    <div class="modal fade" id="editarProducto${producto.getProductoID()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true"
                                                         aria-labelledby="editarProducto">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar producto</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                    </button>
                                                                </div>

                                                                <form action="productos" method="POST">
                                                                    <input type="hidden" name="productoID" value="${producto.getProductoID()}">

                                                                    <div class="modal-body" id="cont_modal">
                                                                        <div class="row">
                                                                            <input type="hidden" name="crearProducto" value="${producto.getProductoID()}">

                                                                            <div class="mb-3">
                                                                                <label class="col-form-label">Codigo</label>
                                                                                <input type="text" class="form-control" value="${producto.getProductoID()}" disabled>
                                                                            </div>
                                                                            
                                                                            <div class="mb-3">
                                                                                <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                                                <input type="text" class="form-control" id="editar-nombre" name="crearNombre" value="<${producto.getNombre()}" placeholder="Agregar nombre" required autofocus>
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <label for="agregar-descripcion" class="col-form-label">Descripcion</label>
                                                                                <input type="text" class="form-control" id="agregar-descripcion" name="crearDescripcion" value="${producto.getDescripcion()}" placeholder="Agregar descripcion" required>
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <label for="agregar-codigo" class="col-form-label">Codigo de barras</label>
                                                                                <input type="text" class="form-control" id="agregar-codigo" name="crearCodigo" value="${producto.getCodBarras()}" placeholder="Agregar codigo de barras" required autofocus>
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <label for="agregar-precio" class="col-form-label">Precio</label>
                                                                                <input type="number" class="form-control" id="agregar-precio" name="crearPrecio" value="${producto.getPrecio()}" placeholder="Precio" required autofocus>
                                                                            </div>

                                                                            <div class="mb-3">
                                                                                <label for="agregar-marca" class="col-form-label">Marca</label>
                                                                                <select type="text"  class="form-select" id="agregar-marca" name="crearMarca" placeholder="Marca" required autofocus>
                                                                                    <option hidden>Selecciona una marca</option>
                                                                                    <c:forEach var="marca" items="${marcas}">
                                                                                        <option ${producto.getMarcaID().equals(marca.getNombre()) ? "selected" : ""} value="${marca.getId()}">${marca.getNombre()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>

                                                                            <div class="mb-3">
                                                                                <label for="agregar-categoria" class="col-form-label">Categoria</label>
                                                                                <select class="form-select" id="agregar-categoria" name="crearCategoria" required autofocus>
                                                                                    <option hidden>Seleccionar categoria</option>
                                                                                    <c:forEach var="categoria" items="${categorias}">
                                                                                        <option ${producto.getCategoriaID().equals(categoria.getNombre()) ? "selected" : ""} value="${categoria.getId()}">${categoria.getNombre()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <label for="agregar-almacen" class="col-form-label">Almacen</label>
                                                                                <select class="form-select" id="agregar-almacen" name="crearAlmacen" required autofocus>
                                                                                    <option hidden>Seleccionar Almacen</option>
                                                                                    <c:forEach var="almacen" items="${almacenes}">
                                                                                        <option ${producto.getAlmacenID().equals(almacen.getNombre()) ? "selected" : ""} value="${almacen.getIdAlmacen()}">${almacen.getNombre()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <label for="agregar-moneda" class="col-form-label">Moneda</label>
                                                                                <select class="form-select" id="agregar-moneda" name="crearMoneda" required autofocus>
                                                                                    <option hidden>Seleccionar Moneda</option>
                                                                                    <c:forEach var="moneda" items="${monedas}">
                                                                                        <option ${producto.getMonedaID().equals(moneda.getNombre()) ? "selected" : ""} value="${moneda.getIdMoneda()}">${moneda.getNombre()}</option>
                                                                                    </c:forEach>
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

                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarPro${producto.getProductoID()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminarPro${producto.getProductoID()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form  name="form-data" action="productos" method="POST" >
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar el producto</h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="productoID" value="${producto.getProductoID()}">
                                                                        <strong style="text-align: center !important">
                                                                            ${producto.getNombre()}
                                                                        </strong>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="${producto.getProductoID()}" name="accion" value="eliminar">Borrar</button>
                                                                    </div>

                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!---fin ventana eliminar--->
                                                </div>

                                            </td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <nav class="mt-2 d-flex justify-content-between align-items-center">
                        <div>
                            <span>Cantidad</span>
                            <select class="form-select" onchange="cambiarCantidad(this)">
                                <option value="10" ${cantidad == 10 ? "selected" : ""}>10</option>
                                <option value="25" ${cantidad == 25 ? "selected" : ""}>25</option>
                                <option value="50" ${cantidad == 50 ? "selected" : ""}>50</option>
                            </select> 
                        </div>

                        <div>
                            <ul class="pagination mb-0">
                                <li class="page-item ${pagina == 1 ? "disabled" : ""}">
                                    <a class="page-link" href="productos?pagina=${pagina - 1}&cantidad=${cantidad}&q=${q}">Anterior</a>
                                </li>

                                <c:forEach var="i" begin="1" end="${paginas}">
                                    <li class="page-item ${pagina == i ? "active" : ""}">
                                        <a class="page-link" href="productos?pagina=${i}&cantidad=${cantidad}&q=${q}">${i}</a>
                                    </li>
                                </c:forEach>

                                <li class="page-item ${pagina == paginas ? "disabled" : ""}">
                                    <a class="page-link" href="productos?pagina=${pagina + 1}&cantidad=${cantidad}&q=${q}">Siguiente</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </body>
</html>
