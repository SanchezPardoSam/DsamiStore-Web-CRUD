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
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregar">Agregar</button>
                            </div>

                            <form action="categorias" class="d-flex">
                                <input type="hidden" name="pagina" value="${pagina}" />
                                <input type="hidden" name="cantidad" value="${cantidad}" />
                                <input type="search" name="q" value="${q}" placeholder="Buscar una categoria" class="form-control me-2">
                                <button type="submit" class="btn btn-primary" id="basic-addon2">Buscar</button>
                            </form>
                        </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form action="categorias" name="crearCategoria" onsubmit="return validateFormCreate();">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar categoria</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div id="alertCreate"></div>
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
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="categoria" items="${categorias}" varStatus="loop">
                                        <tr>
                                            <td>${((pagina * cantidad) - cantidad + 1)  + loop.index}</td>
                                            <td>${categoria.getNombre()}</td>
                                            <td>${categoria.getDescripcion()}</td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editar-modal-${categoria.getId()}">
                                                        Editar
                                                    </button>

                                                    <!--ventana para Update--->
                                                    <div class="modal fade" id="editar-modal-${categoria.getId()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar categoria</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                    </button>
                                                                </div>

                                                                <form action="categorias" method="POST">
                                                                    <input type="hidden" name="idCategoria" value="${categoria.getId()}">
                                                                    <div class="modal-body" id="cont_modal">
                                                                        <div class="mb-3">
                                                                            <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                                            <input type="text" class="form-control" id="editar-nombre" name="nombre" placeholder="Agregar nombre" value="${categoria.getNombre()}" required="true">
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-descripcion" class="col-form-label">Descripción</label>
                                                                            <input type="text" class="form-control" id="editar-descripcion" name="descripcion" placeholder="Agregar descripción" value="${categoria.getDescripcion()}" placeholder="" required="true">
                                                                        </div>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                                        <input  type="submit" class="btn btn-primary" name="accion" value="editar" />
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!---fin ventana Update --->

                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminar-categoria-${categoria.getId()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminar-categoria-${categoria.getId()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form name="form-data" action="categorias" method="POST">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar la categoria</h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                        </button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="idCategoria" value="${categoria.getId()}">
                                                                        <strong style="text-align: center !important">
                                                                            ${categoria.getNombre()}
                                                                        </strong>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="${categoria.getId()}" name="accion" value="eliminar">Borrar</button>
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
                                    <a class="page-link" href="categorias?pagina=${pagina - 1}&cantidad=${cantidad}&q=${q}">Anterior</a>
                                </li>

                                <c:forEach var="i" begin="1" end="${paginas}">
                                    <li class="page-item ${pagina == i ? "active" : ""}">
                                        <a class="page-link" href="categorias?pagina=${i}&cantidad=${cantidad}&q=${q}">${i}</a>
                                    </li>
                                </c:forEach>

                                <li class="page-item ${pagina == paginas ? "disabled" : ""}">
                                    <a class="page-link" href="categorias?pagina=${pagina + 1}&cantidad=${cantidad}&q=${q}">Siguiente</a>
                                </li>
                            </ul>
                        </div>
                    </nav> 
                </div>                        
            </div>
        </div>
       
        <script>
            function cambiarCantidad(event) {
                const params = new URLSearchParams(window.location.search);
                params.set("cantidad", event.value);
                window.location.search = params.toString();
            }
        </script>
         <script src="./public/js/validacion/categoria.js" ></script>
    </body>
</html>
