<%-- 
    Document   : empleado.jsp
    Created on : Jul 5, 2022, 5:30:37 PM
    Author     : andy
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Empleados - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>

            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Empleados</h2>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#agregar">Agregar
                                </button>
                            </div>

                            <div class="d-flex">
                                <input type="text" class="form-control me-2" placeholder="Buscar un proveedor" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                            </div>
                        </div>
                    </div>


                    <!-- Modal para Agregar-->
                    <div class="modal fade modal-lg" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form name="form-data" action="empleados" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar empleado</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body row">
                                        <div class="form-group col-md-6">
                                            <div>
                                                <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                <input type="text" class="form-control" id="agregar-nombre" name="crearNombre" placeholder="Agregar nombre" required autofocus>
                                            </div>

                                            <div>
                                                <label for="agregar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoPaterno" name="crearApellidoPaterno" placeholder="Agregar apellidoPaterno" required>
                                            </div>

                                            <div>
                                                <label for="agregar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoMaterno" name="crearApellidoMaterno" placeholder="Agregar apellidoMaterno" required>
                                            </div>

                                            <div>
                                                <label for="agregar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                <select class="form-select" id="agregar-idTipoDocumento" name="idTipoDocumento" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Tipo de documento</option>
                                                    <c:forEach var="documento" items="${documentos}">
                                                        <option value="${documento.getId()}">${documento.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-numDocumento" class="col-form-label">Nº de documento</label>
                                                <input type="text" class="form-control" id="agregar-numDocumento" name="crearNumDocumento" placeholder="Agregar numDocumento" required>
                                            </div>

                                            <div>
                                                <label for="agregar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                <input type="date" class="form-control" id="agregar-fechaNac" name="crearFechaNac" placeholder="Agregar fecha de nacimiento" required>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <div>
                                                <label for="agregar-idPais" class="col-form-label">Pais</label>
                                                <select class="form-select" id="agregar-idPais" accion="idPais" name="idPais" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Pais</option>
                                                    <c:forEach var="pais" items="${paises}">
                                                        <option value="${pais.getId()}">${pais.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div>
                                                <label  for="agregar-idRegion" class="col-form-label">Region</label>
                                                <select class="form-select" id="agregar-idRegion" accion="idRegion" name="idRegion" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Region</option>
                                                </select>                                                                                                    
                                            </div>

                                            <div>
                                                <label for="agregar-idProvincia" class="col-form-label">Provincia</label>
                                                <select class="form-select" id="agregar-idProvincia" accion="idProvincia" name="idProvincia" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Provincia</option>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-idDistrito" class="col-form-label">Distrito</label>
                                                <select class="form-select" id="agregar-idDistrito" accion="idDistrito" name="idDistrito" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Distritos</option>
                                                </select>
                                            </div>

                                            <script>
                                                (() => {
                                                    const paisSelectEl = document.getElementById("agregar-idPais");
                                                    const regionSelectEl = document.getElementById("agregar-idRegion");
                                                    const provinciaSelectEl = document.getElementById("agregar-idProvincia");
                                                    const distritoSelectEl = document.getElementById("agregar-idDistrito");

                                                    async function obtenerRegiones(paisId) {
                                                        const res = await fetch("proveedores?accion=regiones&paisId=" + paisId);
                                                        const regiones = await res.json();
                                                        return regiones;
                                                    }

                                                    async function obtenerProvincias(regionId) {
                                                        const res = await fetch("proveedores?accion=provincias&regionId=" + regionId);
                                                        const provincias = await res.json();
                                                        return provincias;
                                                    }

                                                    async function obtenerDistritos(provinciaId) {
                                                        const res = await fetch("proveedores?accion=distritos&provinciaId=" + provinciaId);
                                                        const distritos = await res.json();
                                                        return distritos;
                                                    }

                                                    paisSelectEl.addEventListener("change", async (event) => {
                                                        const paisId = event.target.value;
                                                        const regiones = await obtenerRegiones(paisId);

                                                        let regionesHTML = "";
                                                        let provinciasHTML = "";
                                                        let distritosHTML = "";
                                                        regionesHTML += "<option>Seleccionar Region</option>";
                                                        provinciasHTML += "<option>Seleccionar Provincia</option>";
                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                        for (const region of regiones) {
                                                            regionesHTML += "<option value='" + region.id + "'>" + region.nombre + "</option>";
                                                        }

                                                        if (regiones.length > 0) {
                                                            const regionId = regiones[0].id;
                                                            const provincias = await obtenerProvincias(regionId);

                                                            for (const provincia of provincias) {
                                                                provinciasHTML += "<option value='" + provincia.id + "'>" + provincia.nombre + "</option>";
                                                            }

                                                            if (provincias.length > 0) {
                                                                const provinciaId = provincias[0].id;
                                                                const distritos = await obtenerDistritos(provinciaId);

                                                                for (const distrito of distritos) {
                                                                    distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                                }
                                                            }
                                                        }
                                                        regionSelectEl.innerHTML = regionesHTML;
                                                        provinciaSelectEl.innerHTML = provinciasHTML;
                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                    });

                                                    regionSelectEl.addEventListener("change", async (event) => {
                                                        const regionId = event.target.value;
                                                        const provincias = await obtenerProvincias(regionId);

                                                        let provinciasHTML = "";
                                                        let distritosHTML = "";

                                                        provinciasHTML += "<option>Seleccionar Provincia</option>";
                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                        for (const provincia of provincias) {
                                                            provinciasHTML += "<option value='" + provincia.id + "'>" + provincia.nombre + "</option>";
                                                        }

                                                        if (provincias.length > 0) {
                                                            const provinciaId = provincias[0].id;
                                                            const distritos = await obtenerDistritos(provinciaId);

                                                            for (const distrito of distritos) {
                                                                distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                            }
                                                        }

                                                        provinciaSelectEl.innerHTML = provinciasHTML;
                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                    });

                                                    provinciaSelectEl.addEventListener("change", async (event) => {
                                                        const provinciaId = event.target.value;
                                                        const distritos = await obtenerDistritos(provinciaId);

                                                        let distritosHTML = "";
                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                        for (const distrito of distritos) {
                                                            distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                        }

                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                    });
                                                })();
                                            </script>

                                            <div>
                                                <label for="agregar-Direccion" class="col-form-label">Direccion</label>
                                                <input type="text" class="form-control" id="agregar-Direccion" name="crearDireccion" placeholder="Agregar Direccion" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <input type="submit" class="btn btn-primary"  name="accion" value="agregar" />
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
                                        <th scope="col">Nombre(s)</th>
                                        <th scope="col">Apellido Paterno</th>
                                        <th scope="col">Apellido Materno</th>
                                        <th scope="col">Tipo de documento</th>
                                        <th scope="col">N Documento</th>
                                        <th scope="col">País</th>
                                        <th scope="col">Provincia</th>
                                        <th scope="col">Distrito</th>
                                        <th scope="col">Dirección</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="empleado" items="${empleados}" varStatus="loop">
                                        <tr>
                                            <td>${((pagina * cantidad) - cantidad + 1)  + loop.index}</td>
                                            <td>${empleado.getNombre()}</td>
                                            <td>${empleado.getApellidoPaterno()}</td>
                                            <td>${empleado.getApellidoMaterno()}</td>
                                            <td>${empleado.getDocumento().getNombre()}</td>
                                            <td>${empleado.getNumDocum()}</td>
                                            <td>${empleado.getPais().getNombre()}</td>
                                            <td>${empleado.getProvincia().getNombre()}</td>
                                            <td>${empleado.getDistrito().getNombre()}</td>
                                            <td>${empleado.getDireccion()}</td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarProvee${empleado.getCodigoEmpleado()}">Editar</button>

                                                    <!--ventana para Editar--->
                                                    <div class="modal fade modal-lg" id="editarProvee${empleado.getCodigoEmpleado()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar empleado</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>

                                                                <form name="form-data" action="empleados" method="POST">
                                                                    <input type="hidden" name="idProveedor" value="${empleado.getCodigoEmpleado()}">

                                                                    <div class="modal-body row" id="cont_modal">
                                                                        <div class="form-group col-md-6">
                                                                            <div>
                                                                                <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                                                <input type="text" class="form-control" id="editar-nombre" name="nombre" placeholder="Editar nombre" value="${empleado.getNombre()}" required="true">
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                                                <input type="text" class="form-control" id="editar-apellidoPaterno" name="editarApellidoPaterno" value="${empleado.getApellidoPaterno()}" placeholder="Editar apellidoPaterno" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                                                <input type="text" class="form-control" id="editar-apellidoMaterno" name="editarApellidoMaterno" value="${empleado.getApellidoMaterno()}" placeholder="Editar apellidoMaterno" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                                                <select class="form-select" id="editar-idTipoDocumento" name="idTipoDocumento" value="${empleado.getDocumento().getId()}" aria-label=".form-select-sm example">
                                                                                    <c:forEach var="documento" items="${documentos}">
                                                                                        <option ${empleado.getDocumento().getId().equals(documento.getId()) ? "selected" : ""} value="${documento.getId()}">${documento.getNombre()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-numDocumento" class="col-form-label">N de documento</label>
                                                                                <input type="text" class="form-control" id="editar-numDocumento" value="${empleado.getNumDocum()}" name="editarNumDocumento" placeholder="Editar numDocumento" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                                                <input type="date" class="form-control" id="editar-fechaNac" name="editarFechaNac" value="${empleado.getFechaNacimiento().toString().substring(0, 10)}" >
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group col-md-6">
                                                                            <div>
                                                                                <label for="editar-idPais" class="col-form-label">Pais</label>
                                                                                <select class="form-select" id="editar-idPais-${empleado.getCodigoEmpleado()}" accion="idPais" name="idPais" value="${empleado.getPais().getId()}" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idRegion" class="col-form-label">Region</label>
                                                                                <select class="form-select" id="editar-idRegion-${empleado.getCodigoEmpleado()}" accion="idRegion" name="idRegion" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idProvincia" class="col-form-label">Provincia</label>
                                                                                <select class="form-select" id="editar-idProvincia-${empleado.getCodigoEmpleado()}" accion="idProvincia" name="idProvincia" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idDistrito" class="col-form-label">Distrito</label>
                                                                                <select class="form-select" id="editar-idDistrito-${empleado.getCodigoEmpleado()}" accion="idDistrito" name="idDistrito" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>
                                                                            <script>
                                                                                (() => {
                                                                                    const editarModalEl = document.getElementById('editarProvee${empleado.getCodigoEmpleado()}');

                                                                                    const paisSelectEl = document.getElementById("editar-idPais-${empleado.getCodigoEmpleado()}");
                                                                                    const regionSelectEl = document.getElementById("editar-idRegion-${empleado.getCodigoEmpleado()}");
                                                                                    const provinciaSelectEl = document.getElementById("editar-idProvincia-${empleado.getCodigoEmpleado()}");
                                                                                    const distritoSelectEl = document.getElementById("editar-idDistrito-${empleado.getCodigoEmpleado()}");
                                                                                    const editarModal = new bootstrap.Modal(editarModalEl);

                                                                                    paisSelectEl.disabled = true;
                                                                                    regionSelectEl.disabled = true;
                                                                                    provinciaSelectEl.disabled = true;
                                                                                    distritoSelectEl.disabled = true;


                                                                                    editarModalEl.addEventListener('shown.bs.modal', async () => {
                                                                                        const paisIdSeleccionada = "${empleado.getPais().getId()}";
                                                                                        const regionIdSeleccionada = "${empleado.getRegion().getId()}";
                                                                                        const provinciaIdSeleccionada = "${empleado.getProvincia().getId()}";
                                                                                        const distritoIdSeleccionada = "${empleado.getDistrito().getId()}";


                                                                                        let paisesHTML = "";
                                                                                        let regionesHTML = "";
                                                                                        let provinciasHTML = "";
                                                                                        let distritosHTML = "";

                                                                                        paisesHTML += "<option>Seleccionar Pais</option>";
                                                                                        regionesHTML += "<option>Seleccionar Region</option>";
                                                                                        provinciasHTML += "<option>Seleccionar Provincia</option>";
                                                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                                                        const paises = await obtenerPaises();


                                                                                        for (const pais of paises) {
                                                                                            paisesHTML += "<option " + (pais.id === paisIdSeleccionada ? "selected" : "") + " value='" + pais.id + "'>" + pais.nombre + "</option>";
                                                                                        }

                                                                                        const regiones = await obtenerRegiones(paisIdSeleccionada);


                                                                                        for (const region of regiones) {
                                                                                            regionesHTML += "<option " + (region.id === regionIdSeleccionada ? "selected" : "") + " value='" + region.id + "'>" + region.nombre + "</option>";
                                                                                        }

                                                                                        const provincias = await obtenerProvincias(regionIdSeleccionada);

                                                                                        for (const provincia of provincias) {
                                                                                            provinciasHTML += "<option " + (provincia.id === provinciaIdSeleccionada ? "selected" : "") + " value='" + provincia.id + "'>" + provincia.nombre + "</option>";
                                                                                        }

                                                                                        const distritos = await obtenerDistritos(provinciaIdSeleccionada);

                                                                                        for (const distrito of distritos) {
                                                                                            distritosHTML += "<option " + (distrito.id === distritoIdSeleccionada ? "selected" : "") + " value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                                                        }

                                                                                        paisSelectEl.innerHTML = paisesHTML;
                                                                                        regionSelectEl.innerHTML = regionesHTML;
                                                                                        provinciaSelectEl.innerHTML = provinciasHTML;
                                                                                        distritoSelectEl.innerHTML = distritosHTML;

                                                                                        paisSelectEl.disabled = false;
                                                                                        regionSelectEl.disabled = false;
                                                                                        provinciaSelectEl.disabled = false;
                                                                                        distritoSelectEl.disabled = false;
                                                                                    });

                                                                                    async function obtenerPaises() {
                                                                                        const res = await fetch("proveedores?accion=paises");
                                                                                        const paises = await res.json();
                                                                                        return paises;
                                                                                    }

                                                                                    async function obtenerRegiones(paisId) {
                                                                                        const res = await fetch("proveedores?accion=regiones&paisId=" + paisId);
                                                                                        const regiones = await res.json();
                                                                                        return regiones;
                                                                                    }

                                                                                    async function obtenerProvincias(regionId) {
                                                                                        const res = await fetch("proveedores?accion=provincias&regionId=" + regionId);
                                                                                        const provincias = await res.json();
                                                                                        return provincias;
                                                                                    }

                                                                                    async function obtenerDistritos(provinciaId) {
                                                                                        const res = await fetch("proveedores?accion=distritos&provinciaId=" + provinciaId);
                                                                                        const distritos = await res.json();
                                                                                        return distritos;
                                                                                    }

                                                                                    paisSelectEl.addEventListener("change", async (event) => {
                                                                                        const paisId = event.target.value;
                                                                                        const regiones = await obtenerRegiones(paisId);

                                                                                        let regionesHTML = "";
                                                                                        let provinciasHTML = "";
                                                                                        let distritosHTML = "";

                                                                                        regionesHTML += "<option>Seleccionar Region</option>";
                                                                                        provinciasHTML += "<option>Seleccionar Provincia</option>";
                                                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                                                        for (const region of regiones) {
                                                                                            regionesHTML += "<option value='" + region.id + "'>" + region.nombre + "</option>";
                                                                                        }

                                                                                        if (regiones.length > 0) {
                                                                                            const regionId = regiones[0].id;
                                                                                            const provincias = await obtenerProvincias(regionId);

                                                                                            for (const provincia of provincias) {
                                                                                                provinciasHTML += "<option value='" + provincia.id + "'>" + provincia.nombre + "</option>";
                                                                                            }

                                                                                            if (provincias.length > 0) {
                                                                                                const provinciaId = provincias[0].id;
                                                                                                const distritos = await obtenerDistritos(provinciaId);

                                                                                                for (const distrito of distritos) {
                                                                                                    distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                                                                }
                                                                                            }
                                                                                        }

                                                                                        regionSelectEl.innerHTML = regionesHTML;
                                                                                        provinciaSelectEl.innerHTML = provinciasHTML;
                                                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                                                    });

                                                                                    regionSelectEl.addEventListener("change", async (event) => {
                                                                                        const regionId = event.target.value;
                                                                                        const provincias = await obtenerProvincias(regionId);

                                                                                        let provinciasHTML = "";
                                                                                        let distritosHTML = "";

                                                                                        provinciasHTML += "<option>Seleccionar Provincia</option>";
                                                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                                                        for (const provincia of provincias) {
                                                                                            provinciasHTML += "<option value='" + provincia.id + "'>" + provincia.nombre + "</option>";
                                                                                        }

                                                                                        if (provincias.length > 0) {
                                                                                            const provinciaId = provincias[0].id;
                                                                                            const distritos = await obtenerDistritos(provinciaId);

                                                                                            for (const distrito of distritos) {
                                                                                                distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                                                            }
                                                                                        }

                                                                                        provinciaSelectEl.innerHTML = provinciasHTML;
                                                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                                                    });

                                                                                    provinciaSelectEl.addEventListener("change", async (event) => {
                                                                                        const provinciaId = event.target.value;
                                                                                        const distritos = await obtenerDistritos(provinciaId);

                                                                                        let distritosHTML = "";

                                                                                        distritosHTML += "<option>Seleccionar Distrito</option>";

                                                                                        for (const distrito of distritos) {
                                                                                            distritosHTML += "<option value='" + distrito.id + "'>" + distrito.nombre + "</option>";
                                                                                        }

                                                                                        distritoSelectEl.innerHTML = distritosHTML;
                                                                                    });
                                                                                })();
                                                                            </script>

                                                                            <div>
                                                                                <label for="editar-Direccion" class="col-form-label">Direccion</label>
                                                                                <input type="text" class="form-control" id="editar-Direccion" name="editarrDireccion" value="${empleado.getDireccion()}" placeholder="Editar Direccion" required>
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
                                                    <!---fin ventana para Editar --->

                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarProvee${empleado.getCodigoEmpleado()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminarProvee${empleado.getCodigoEmpleado()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form name="form-data" action="empleados" method="POST">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar al empleado</h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="idProveedor" value="${empleado.getCodigoEmpleado()}">
                                                                        <strong style="text-align: center !important">${empleado.getNombre()}</strong>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="${empleado.getCodigoEmpleado()}" name="accion" value="eliminar">Eliminar</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!---fin ventana eliminar--->
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
                                    <a class="page-link" href="empleados?pagina=${pagina - 1}&cantidad=${cantidad}&q=${q}">Anterior</a>
                                </li>

                                <c:forEach var="i" begin="1" end="${paginas}">
                                    <li class="page-item ${pagina == i ? "active" : ""}">
                                        <a class="page-link" href="empleados?pagina=${i}&cantidad=${cantidad}&q=${q}">${i}</a>
                                    </li>
                                </c:forEach>

                                <li class="page-item ${pagina == paginas ? "disabled" : ""}">
                                    <a class="page-link" href="empleados?pagina=${pagina + 1}&cantidad=${cantidad}&q=${q}">Siguiente</a>
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
    </body>
</html>
