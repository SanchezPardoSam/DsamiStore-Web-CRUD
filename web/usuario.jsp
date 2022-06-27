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
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap.css">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Usuarios - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <div class="app-sidebar p-3 border-end ">
                <a class="d-flex text-decoration-none mb-4 " href="${pageContext.request.contextPath}/categoria.jsp">
                    <h4 class="fs-4 fw-bold text-primary">D' Sami Store</h4>
                </a>
                <div class="nav nav-pills flex-column mb-auto">
                    <li class='nav-item'>
                        <a href="${pageContext.request.contextPath}/categoria.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/categoria.jsp') ? 'active' : 'link-dark'}">Categorias</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/producto.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/producto.jsp') ? 'active' : 'link-dark'}">Productos</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/empleado.jsp" class="nav-link ${pageContext.request.requestURI.endsWith('/empleado.jsp') ? 'active' : 'link-dark'}">Usuarios</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/proveedor.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/proveedor.jsp') ? 'active' : 'link-dark'}">Proveedor</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/usuarios" class="nav-link ${pageContext.request.requestURI.endsWith('/usuarios') ? 'active' : 'link-dark'}">Usuarios</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/rol.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/rol.jsp') ? 'active' : 'link-dark'}">Roles</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/recepcion.jsp" class="nav-link ${pageContext.request.requestURI.endsWith('/recepcion.jsp') ? 'active' : 'link-dark'}">Recepcion</a>
                    </li>
                    <li class='nav-item' >
                        <a href="${pageContext.request.contextPath}/despacho.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/despacho.jsp') ? 'active' : 'link-dark'}">Despacho</a>
                    </li>
                </div>
            </div>

            <div class="app-content">
                <nav class="app-navbar navbar border-bottom bg-white">
                    <div class="container-fluid">
                        <div></div>
                        <div class="btn-group">
                            <p class="d-flex align-items-center h-100 mt-2 my-2 mx-2">${usuario.getNombreUsuario()}</p>
                            <div class="rounded-circle overflow-hidden" style="width: 42px; height: 42px; cursor: pointer"
                                 data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="https://www.pngkey.com/png/full/72-729716_user-avatar-png-graphic-free-download-icon.png"
                                     class="w-100 h-100" />
                            </div>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth?accion=salir">Cerrar sesión</a></li>
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
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregar-modal">Agregar</button>
                            </div>
                            <form action="usuarios" class="d-flex">
                                <input type="text" name="valor" value="${valor}" placeholder="Buscar un usuario" class="form-control me-2">
                                <button  type="submit" name="accion" value="buscar" class="btn btn-primary">Buscar</button>
                            </form>
                        </div>
                    </div>

                    <!-- Modal para Agregar-->
                    <div class="modal fade" id="agregar-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form action="usuarios" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar usuario</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div id="agregar-alert-danger" class="alert alert-danger alert-dismissible fade show" role="alert" style="display: none;">
                                            <span id="agregar-alert-danger-mensaje"></span>
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                        </div>

                                        <div class="mb-3">
                                            <label for="agregar-nombre-usuario-input" class="form-label">Nombre de usuario</label>
                                            <input type="text" class="form-control" id="agregar-nombre-usuario-input" name="nombreUsuario" placeholder="Agregar nombre de usuario" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="agregar-clave-input" class="form-label">Clave</label>
                                            <input type="password" class="form-control" id="agregar-clave-input" name="clave" placeholder="Agregar clave" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="agregar-codigo-rol-select" class="col-form-label">Rol</label>
                                            <select class="form-select" id="agregar-codigo-rol-select" name="codigoRol" aria-label=".form-select-sm example">
                                                <option value="" selected>Seleccionar rol</option>
                                                <c:forEach var="rol" items="${roles}">
                                                    <option value="${rol.getCodigoRol()}">${rol.getNombre()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div>
                                            <label for="agregar-codigo-empleado-select" class="col-form-label">Empleado</label>
                                            <select class="form-select" id="agregar-codigo-empleado-select" name="codigoEmpleado" aria-label=".form-select-sm example">
                                                <option value="" selected>Seleccionar empleado</option>
                                                <c:forEach var="empleado" items="${empleados}">
                                                    <option value="${empleado.getCodigoEmpleado()}">${empleado.getNombre()} ${empleado.getApellidoPaterno()} ${empleado.getApellidoMaterno()}</option>
                                                </c:forEach>
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

                    <div class="card">
                        <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th scope="col">N</th>
                                        <th scope="col">Nombre de usuario</th>
                                        <th scope="col">Empleado</th>
                                        <th scope="col">Rol</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="usuario" items="${usuarios}" varStatus="loop">
                                        <tr>
                                            <td>${loop.index + 1}</td>
                                            <td>${usuario.getNombreUsuario()}</td>
                                            <td>${usuario.getEmpleado().getNombre()} ${usuario.getEmpleado().getApellidoPaterno()} ${usuario.getEmpleado().getApellidoMaterno()}</td>
                                            <td>${usuario.getRol().getNombre()}</td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button type="button" class="btn btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#editar-modal-${usuario.getCodigoUsuario()}">Editar</button>

                                                    <!--ventana para Update--->
                                                    <div class="modal fade" id="editar-modal-${usuario.getCodigoUsuario()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaUsuario">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar usuario</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>

                                                                <form action="usuarios" method="POST">
                                                                    <div class="modal-body" id="cont_modal">
                                                                        <div id="editar-alert-danger-${usuario.getCodigoUsuario()}" class="alert alert-danger alert-dismissible fade show" role="alert" style="display: none;">
                                                                            <span id="editar-alert-danger-mensaje-${usuario.getCodigoUsuario()}"></span>
                                                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                                        </div>

                                                                        <input type="hidden" name="codigoUsuario" value="${usuario.getCodigoUsuario()}">
                                                                        <input type="hidden" name="codigoEmpleado" value="${usuario.getCodigoEmpleado()}">

                                                                        <div class="mb-3">
                                                                            <label class="col-form-label">Codigo</label>
                                                                            <input type="text" class="form-control" value="${usuario.getCodigoUsuario()}" disabled>
                                                                        </div>

                                                                        <div class="mb-3">
                                                                            <label for="editar-nombre-usuario-input-${usuario.getCodigoUsuario()}" class="col-form-label">Nombre de usuario</label>
                                                                            <input type="text" id="editar-nombre-usuario-input-${usuario.getCodigoUsuario()}" name="nombreUsuario" class="form-control" value="${usuario.getNombreUsuario()}" placeholder="Ingregar nombre de usuario" required>
                                                                        </div>

                                                                        <div class="mb-3">
                                                                            <label for="editar-clave-input-${usuario.getCodigoUsuario()}" class="form-label">Clave</label>
                                                                            <input type="password" class="form-control" id="editar-clave-input-${usuario.getCodigoUsuario()}" name="clave" value="" placeholder="Ingregar clave">
                                                                        </div>

                                                                        <div class="mb-3">
                                                                            <label for="editar-codigo-rol-select-${usuario.getCodigoUsuario()}" class="col-form-label">Rol</label>
                                                                            <select class="form-select" id="editar-codigo-rol-select-${usuario.getCodigoUsuario()}" name="codigoRol" aria-label=".form-select-sm example">
                                                                                <c:forEach var="rol" items="${roles}">
                                                                                    <option ${usuario.getRol().getCodigoRol().equals(rol.getCodigoRol()) ? "selected" : ""} value="${rol.getCodigoRol()}">${rol.getNombre()}</option>
                                                                                </c:forEach>
                                                                            </select>
                                                                        </div>

                                                                        <div>
                                                                            <label for="editar-codigo-empleado-select-${usuario.getCodigoUsuario()}" class="col-form-label">Empleado</label>
                                                                            <select class="form-select" id="editar-codigo-empleado-select-${usuario.getCodigoUsuario()}" name="codigoEmpleado" aria-label=".form-select-sm example">
                                                                                <c:forEach var="empleado" items="${empleados}">
                                                                                    <option ${usuario.getCodigoEmpleado().equals(empleado.getCodigoEmpleado()) ? "selected" : ""} value="${empleado.getCodigoEmpleado()}">${empleado.getNombre()} ${empleado.getApellidoPaterno()} ${empleado.getApellidoMaterno()}</option>
                                                                                </c:forEach>
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

                                                    <script>
                                                        (() => {
                                                            // Agregar modal
                                                            const editarModalEl = document.getElementById('editar-modal-${usuario.getCodigoUsuario()}');

                                                            // Agregar form
                                                            const editarNombreUsuarioInputEl = document.getElementById('editar-nombre-usuario-input-${usuario.getCodigoUsuario()}');
                                                            const editarClaveInputEl = document.getElementById('editar-clave-input-${usuario.getCodigoUsuario()}');
                                                            const editarCodigoRolSelectEl = document.getElementById('editar-codigo-rol-select-${usuario.getCodigoUsuario()}');
                                                            const editarCodigoEmpleadoSelectEl = document.getElementById('editar-codigo-empleado-select-${usuario.getCodigoUsuario()}');


                                                            // Agregar alert
                                                            const editarAlertDangerEl = document.getElementById('editar-alert-danger-${usuario.getCodigoUsuario()}');
                                                            const editarAlertDangerMensajeEl = document.getElementById('editar-alert-danger-mensaje-${usuario.getCodigoUsuario()}');

                                                            const editarModal = new bootstrap.Modal(editarModalEl);

                                                            let isEditarModal = false;

                                                            editarModalEl.addEventListener('shown.bs.modal', () => {
                                                                editarCodigoEmpleadoSelectEl.disabled = false;

                                                                const isError = ${usuario.getCodigoUsuario() == codigoUsuario && editarAlertDanger};

                                                                if (isError && !isEditarModal) {
                                                                    const errorMensaje = "${errorMensaje}";
                                                                    const nombreUsuario = "${nombreUsuario}";
                                                                    const codigoRol = "${codigoRol}";
                                                                    const codigoEmpleado = "${codigoEmpleado}";

                                                                    editarNombreUsuarioInputEl.value = nombreUsuario;
                                                                    editarCodigoRolSelectEl.value = codigoRol;
                                                                    editarCodigoEmpleadoSelectEl.value = codigoEmpleado;

                                                                    editarNombreUsuarioInputEl.focus();

                                                                    editarAlertDangerMensajeEl.textContent = errorMensaje;
                                                                    editarAlertDangerEl.style.display = "block";

                                                                    isEditarModal = true;

                                                                }

                                                                editarCodigoEmpleadoSelectEl.disabled = true;

                                                            });

                                                            editarModalEl.addEventListener('hidden.bs.modal', () => {
                                                                editarCodigoEmpleadoSelectEl.disabled = false;

                                                                editarNombreUsuarioInputEl.value = "${usuario.getNombreUsuario()}";
                                                                editarClaveInputEl.value = "";
                                                                editarCodigoRolSelectEl.value = "${usuario.getCodigoRol()}";
                                                                editarCodigoEmpleadoSelectEl.value = "${usuario.getCodigoEmpleado()}";


                                                                editarAlertDangerEl.style.display = "none";

                                                            });

                                                        ${usuario.getCodigoUsuario() == codigoUsuario && editarAlertDanger ? 'editarModal.show();' : ''}
                                                        })();
                                                    </script>

                                                    <!---fin ventana Update --->

                                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#eliminar-usuario-${usuario.getCodigoUsuario()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminar-usuario-${usuario.getCodigoUsuario()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form name="form-data" action="usuarios" method="POST">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar el Usuario</h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="codigoUsuario" value="${usuario.getCodigoUsuario()}">
                                                                        <strong style="text-align: center !important">
                                                                            ${usuario.getNombreUsuario()}
                                                                        </strong>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-danger btnBorrar btn-block" data-bs-dismiss="modal" id="${usuario.getCodigoUsuario()}" name="accion" value="eliminar" >Borrar</button>
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
                </div>
            </div>
        </div>

        <script>
            (() => {
                // Agregar modal
                const agregarModalEl = document.getElementById('agregar-modal');

                // Agregar form
                const agregarNombreUsuarioInputEl = document.getElementById('agregar-nombre-usuario-input');
                const agregarClaveInputEl = document.getElementById('agregar-clave-input');
                const agregarCodigoRolSelectEl = document.getElementById('agregar-codigo-rol-select');
                const agregarCodigoEmpleadoSelectEl = document.getElementById('agregar-codigo-empleado-select');


                // Agregar alert
                const agregarAlertDangerEl = document.getElementById('agregar-alert-danger');
                const agregarAlertDangerMensajeEl = document.getElementById('agregar-alert-danger-mensaje');

                const agregarModal = new bootstrap.Modal(agregarModalEl);

                let isAgregarModal = false;

                agregarModalEl.addEventListener('shown.bs.modal', () => {
                    const isError = ${agregarAlertDanger ? true : false};


                    if (isError && !isAgregarModal) {
                        const errorMensaje = "${errorMensaje}";
                        const nombreUsuario = "${nombreUsuario}";
                        const codigoRol = "${codigoRol}";
                        const codigoEmpleado = "${codigoEmpleado}";

                        agregarNombreUsuarioInputEl.value = nombreUsuario;
                        agregarCodigoRolSelectEl.value = codigoRol;
                        agregarCodigoEmpleadoSelectEl.value = codigoEmpleado;

                        agregarNombreUsuarioInputEl.focus();

                        agregarAlertDangerMensajeEl.textContent = errorMensaje;
                        agregarAlertDangerEl.style.display = "block";

                        isAgregarModal = true;

                    }
                });

                agregarModalEl.addEventListener('hidden.bs.modal', () => {
                    agregarNombreUsuarioInputEl.value = "";
                    agregarClaveInputEl.value = "";
                    agregarCodigoRolSelectEl.selectedIndex = 0;
                    agregarCodigoEmpleadoSelectEl.selectedIndex = 0;
                    agregarAlertDangerEl.style.display = "none";
                });

            ${agregarAlertDanger? 'agregarModal.show();' : ''}
            })();
        </script>
    </body>
</html>
