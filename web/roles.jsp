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
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregar-modal">Agregar</button>
                            </div>

                            <form action="roles" class="d-flex">
                                <input type="hidden" name="pagina" value="${pagina}" />
                                <input type="hidden" name="cantidad" value="${cantidad}" />
                                <input type="search" name="q" value="${q}" placeholder="Buscar un rol" class="form-control me-2">
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>
                        </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form  action="roles" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar rol</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div id="agregar-alert-danger" class="alert alert-danger alert-dismissible fade show" role="alert" style="display: none;">
                                            <span id="agregar-alert-danger-mensaje"></span>
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                        </div>

                                        <div>
                                            <label for="agregar-nombre-input" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" id="agregar-nombre-input" name="nombre" placeholder="Agregar nombre" required autofocus>
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
                                        <th scope="col">Nombre</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="rol" items="${roles}" varStatus="loop">
                                        <tr>
                                            <td>${((pagina * cantidad) - cantidad + 1)  + loop.index}</td>
                                            <td>${rol.getNombre()}</td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editar-modal-${rol.getCodigoRol()}">
                                                        Editar
                                                    </button>

                                                    <!--ventana para Update--->
                                                    <div class="modal fade" id="editar-modal-${rol.getCodigoRol()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaRol">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar Rol</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>

                                                                <form action="roles" method="POST">
                                                                    <div class="modal-body" id="cont_modal">
                                                                        <div id="editar-alert-danger-${rol.getCodigoRol()}" class="alert alert-danger alert-dismissible fade show" role="alert" style="display: none;">
                                                                            <span id="editar-alert-danger-mensaje-${rol.getCodigoRol()}"></span>
                                                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                                        </div>

                                                                        <input type="hidden" name="codigoRol" value="${rol.getCodigoRol()}">

                                                                        <div class="mb-3">
                                                                            <label class="col-form-label">Codigo</label>
                                                                            <input type="text" class="form-control" value="${rol.getCodigoRol()}" disabled>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-nombre-input-${rol.getCodigoRol()}" class="col-form-label">Nombre</label>
                                                                            <input type="text" id="editar-nombre-input-${rol.getCodigoRol()}" name="nombre" class="form-control" value="${rol.getNombre()}" placeholder="Ingresar nombre" required autofocus>
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

                                                    <script>
                                                        (() => {
                                                            // Editar modal
                                                            const editarModalEl = document.getElementById('editar-modal-${rol.getCodigoRol()}');

                                                            // Editar form
                                                            const editarNombreInputEl = document.getElementById('editar-nombre-input-${rol.getCodigoRol()}');


                                                            // Editar alert
                                                            const editarAlertDangerEl = document.getElementById('editar-alert-danger-${rol.getCodigoRol()}');
                                                            const editarAlertDangerMensajeEl = document.getElementById('editar-alert-danger-mensaje-${rol.getCodigoRol()}');

                                                            const editarModal = new bootstrap.Modal(editarModalEl);

                                                            let isEditarModal = false;

                                                            editarModalEl.addEventListener('shown.bs.modal', () => {
                                                                const isError = ${rol.getCodigoRol() == codigoRol && editarAlertDanger};

                                                                if (isError && !isEditarModal) {
                                                                    const errorMensaje = "${errorMensaje}";
                                                                    const nombre = "${nombre}";

                                                                    editarNombreInputEl.value = nombre;

                                                                    editarNombreInputEl.focus();

                                                                    editarAlertDangerMensajeEl.textContent = errorMensaje;
                                                                    editarAlertDangerEl.style.display = "block";

                                                                    isEditarModal = true;

                                                                }
                                                            });

                                                            editarModalEl.addEventListener('hidden.bs.modal', () => {
                                                                editarNombreInputEl.value = "${rol.getNombre()}";

                                                                editarAlertDangerEl.style.display = "none";
                                                            });

                                                        ${rol.getCodigoRol() == codigoRol && editarAlertDanger ? 'editarModal.show();' : ''}
                                                        })();
                                                    </script>

                                                    <!---fin ventana Update --->


                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminar-rol-${rol.getCodigoRol()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminar-rol-${rol.getCodigoRol()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form name="form-data" action="roles" method="POST">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar el rol </h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="codigoRol" value="${rol.getCodigoRol()}">
                                                                        <strong style="text-align: center !important">
                                                                            ${rol.getNombre()}
                                                                        </strong>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="${rol.getCodigoRol()}" name="accion" value="eliminar">Borrar</button>
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
                                    <a class="page-link" href="roles?pagina=${pagina - 1}&cantidad=${cantidad}&q=${q}">Anterior</a>
                                </li>

                                <c:forEach var="i" begin="1" end="${paginas}">
                                    <li class="page-item ${pagina == i ? "active" : ""}">
                                        <a class="page-link" href="roles?pagina=${i}&cantidad=${cantidad}&q=${q}">${i}</a>
                                    </li>
                                </c:forEach>

                                <li class="page-item ${pagina == paginas ? "disabled" : ""}">
                                    <a class="page-link" href="roles?pagina=${pagina + 1}&cantidad=${cantidad}&q=${q}">Siguiente</a>
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

            (() => {
                // Agregar modal
                const agregarModalEl = document.getElementById('agregar-modal');

                // Agregar form
                const agregarNombreInputEl = document.getElementById('agregar-nombre-input');

                // Agregar alert
                const agregarAlertDangerEl = document.getElementById('agregar-alert-danger');
                const agregarAlertDangerMensajeEl = document.getElementById('agregar-alert-danger-mensaje');

                const agregarModal = new bootstrap.Modal(agregarModalEl);

                let isAgregarModal = false;

                agregarModalEl.addEventListener('shown.bs.modal', () => {
                    const isError = ${agregarAlertDanger ? true : false};


                    if (isError && !isAgregarModal) {
                        const errorMensaje = "${errorMensaje}";
                        const nombre = "${nombre}";

                        agregarNombreInputEl.value = nombre;

                        agregarNombreInputEl.focus();

                        agregarAlertDangerMensajeEl.textContent = errorMensaje;
                        agregarAlertDangerEl.style.display = "block";

                        isAgregarModal = true;

                    }
                });

                agregarModalEl.addEventListener('hidden.bs.modal', () => {
                    agregarNombreInputEl.value = "";
                    agregarAlertDangerEl.style.display = "none";
                });

            ${agregarAlertDanger? 'agregarModal.show();' : ''}
            })();
        </script>
    </body>
</html>
