<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : FIORELLA
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Proveedores - D'SamiStore</title>
    </head>
    <body>
        <div class="app">
            <%@include file="/includes/sidebar.jsp"%>

            <div class="app-content">
                <%@include file="/includes/navbar.jsp"%>

                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Proveedores</h2>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregar">Agregar</button>
                            </div>

                            <form action="proveedores" class="d-flex">
                                <input type="hidden" name="pagina" value="${pagina}" />
                                <input type="hidden" name="cantidad" value="${cantidad}" />
                                <input type="search" name="q" value="${q}" placeholder="Buscar un proveedor" class="form-control me-2">
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>

                        </div>
                    </div>


                    <!-- Modal para Agregar-->
                    <div class="modal fade modal-lg" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form action="proveedores" method="POST"  name="createProveedor" onsubmit="return validateFormCreate();" >
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar proveedor</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div id="alertCreate"></div>
                                    <div class="modal-body row">
                                        <div class="form-group col-md-6">
                                            <div>
                                                <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                <input type="text" class="form-control" id="agregar-nombre" name="crearNombre" placeholder="Nombre(s)" required autofocus>
                                            </div>

                                            <div>
                                                <label for="agregar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoPaterno" name="crearApellidoPaterno" placeholder="Apellido Paterno" required>
                                            </div>

                                            <div>
                                                <label for="agregar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoMaterno" name="crearApellidoMaterno" placeholder="Apellido Materno" required>
                                            </div>

                                            <div>
                                                <label for="agregar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                <select class="form-select" id="agregar-idTipoDocumento" name="idTipoDocumento" aria-label=".form-select-sm example">
                                                    <option selected value="">Seleccionar Tipo de documento</option>
                                                    <c:forEach var="documento" items="${documentos}">
                                                        <option value="${documento.getId()}">${documento.getNombre()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div>
                                                <label for="agregar-numDocumento" class="col-form-label">Nº de documento</label>
                                                <input type="number" class="form-control" id="agregar-numDocumento" name="crearNumDocumento" placeholder="Agregar numero de documento" required  onKeyPress="if(this.value.length==10) return false;">
                                            </div>

                                            <div>
                                                <label for="agregar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                <input type="date" class="form-control" id="agregar-fechaNac" name="crearFechaNac" placeholder="Agregar fecha de nacimiento" required>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <div>
                                                <label for="agregar-idEmpresa" class="col-form-label">Empresa</label>
                                                <select class="form-select" id="agregar-idEmpresa" name="idEmpresa" aria-label=".form-select-sm example">
                                                    <option selected value="">Seleccionar Empresa</option>
                                                    <c:forEach var="empresa" items="${empresas}">
                                                        <option value="${empresa.getIdEmpresa()}">${empresa.getRazonSocial()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

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
                                                        regionesHTML += "<option value=''>Seleccionar Region</option>";
                                                        provinciasHTML += "<option value=''>Seleccionar Provincia</option>";
                                                        distritosHTML += "<option value=''>Seleccionar Distrito</option>";
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
                                                        provinciasHTML += "<option value=''>Seleccionar Provincia</option>";
                                                        distritosHTML += "<option value=''>Seleccionar Distrito</option>";
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
                                                        distritosHTML += "<option value=''>Seleccionar Distrito</option>";
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
                                        <th scope="col">Nombre</th>
                                        <th scope="col">N Documento</th>
                                        <th scope="col">Empresa</th> 
                                        <th scope="col">Direccion</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="proveedor" items="${proveedores}" varStatus="loop">
                                        <tr>
                                            <td>${((pagina * cantidad) - cantidad + 1)  + loop.index}</td>
                                            <td>${proveedor.getNombre()}</td>
                                            <td>${proveedor.getNumDocum()}</td>
                                            <td>${proveedor.getEmpresa().getRazonSocial()}</td>
                                            <td>${proveedor.getDireccion()}</td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarProvee${proveedor.getCodigoProveedor()}">Editar</button>

                                                    <!--ventana para Editar--->
                                                    <div class="modal fade modal-lg" id="editarProvee${proveedor.getCodigoProveedor()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                                        <div class="modal-dialog modal-dialog-centered">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar proveedor</h5>
                                                                    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>

                                                                <form name="form-data" action="proveedores" method="POST">
                                                                    <input type="hidden" name="idProveedor" value="${proveedor.getCodigoProveedor()}">

                                                                    <div class="modal-body row" id="cont_modal">
                                                                        <div class="form-group col-md-6">
                                                                            <div>
                                                                                <label class="col-form-label">Codigo</label>
                                                                                <input type="text" class="form-control" value="${proveedor.getCodigoProveedor()}" disabled>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                                                <input type="text" class="form-control" id="editar-nombre" name="nombre" placeholder="Editar nombre" value="${proveedor.getNombre()}" required="true">
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                                                <input type="text" class="form-control" id="editar-apellidoPaterno" name="editarApellidoPaterno" value="${proveedor.getApellidoPaterno()}" placeholder="Editar apellidoPaterno" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                                                <input type="text" class="form-control" id="editar-apellidoMaterno" name="editarApellidoMaterno" value="${proveedor.getApellidoMaterno()}" placeholder="Editar apellidoMaterno" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                                                <select class="form-select" id="editar-idTipoDocumento" name="idTipoDocumento" value="${proveedor.getDocumento().getId()}" aria-label=".form-select-sm example">
                                                                                    <c:forEach var="documento" items="${documentos}">
                                                                                        <option ${proveedor.getDocumento().getId().equals(documento.getId()) ? "selected" : ""} value="${documento.getId()}">${documento.getNombre()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-numDocumento" class="col-form-label">Nº de documento</label>
                                                                                <input type="text" class="form-control" id="editar-numDocumento" value="${proveedor.getNumDocum()}" name="editarNumDocumento" placeholder="Editar numDocumento" required>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                                                <input type="date" class="form-control" id="editar-fechaNac" name="editarFechaNac" value="${proveedor.getFechaNacimiento().toString().substring(0, 10)}" >
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group col-md-6">
                                                                            <div>
                                                                                <label for="editar-idEmpresa" class="col-form-label">Empresa</label>
                                                                                <select class="form-select" id="editar-idEmpresa" name="idEmpresa" value="${proveedor.getEmpresa().getIdEmpresa()}"aria-label=".form-select-sm example">
                                                                                    <c:forEach var="empresa" items="${empresas}">
                                                                                        <option ${proveedor.getEmpresa().getIdEmpresa().equals(empresa.getIdEmpresa()) ? "selected" : ""} value="${empresa.getIdEmpresa()}">${empresa.getRazonSocial()}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idPais" class="col-form-label">Pais</label>
                                                                                <select class="form-select" id="editar-idPais-${proveedor.getCodigoProveedor()}" accion="idPais" name="idPais" value="${proveedor.getPais().getId()}" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idRegion" class="col-form-label">Region</label>
                                                                                <select class="form-select" id="editar-idRegion-${proveedor.getCodigoProveedor()}" accion="idRegion" name="idRegion" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idProvincia" class="col-form-label">Provincia</label>
                                                                                <select class="form-select" id="editar-idProvincia-${proveedor.getCodigoProveedor()}" accion="idProvincia" name="idProvincia" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>

                                                                            <div>
                                                                                <label for="editar-idDistrito" class="col-form-label">Distrito</label>
                                                                                <select class="form-select" id="editar-idDistrito-${proveedor.getCodigoProveedor()}" accion="idDistrito" name="idDistrito" aria-label=".form-select-sm example">
                                                                                    <option>Cargando...</option>
                                                                                </select>
                                                                            </div>
                                                                            <script>
                                                                                (() => {
                                                                                    // Editar modal
                                                                                    const editarModalEl = document.getElementById('editarProvee${proveedor.getCodigoProveedor()}');

                                                                                    const paisSelectEl = document.getElementById("editar-idPais-${proveedor.getCodigoProveedor()}");
                                                                                    const regionSelectEl = document.getElementById("editar-idRegion-${proveedor.getCodigoProveedor()}");
                                                                                    const provinciaSelectEl = document.getElementById("editar-idProvincia-${proveedor.getCodigoProveedor()}");
                                                                                    const distritoSelectEl = document.getElementById("editar-idDistrito-${proveedor.getCodigoProveedor()}");
                                                                                    const editarModal = new bootstrap.Modal(editarModalEl);


                                                                                    paisSelectEl.disabled = true;
                                                                                    regionSelectEl.disabled = true;
                                                                                    provinciaSelectEl.disabled = true;
                                                                                    distritoSelectEl.disabled = true;

                                                                                    editarModalEl.addEventListener('shown.bs.modal', async () => {
                                                                                        const paisIdSeleccionada = "${proveedor.getPais().getId()}";
                                                                                        const regionIdSeleccionada = "${proveedor.getRegion().getId()}";
                                                                                        const provinciaIdSeleccionada = "${proveedor.getProvincia().getId()}";
                                                                                        const distritoIdSeleccionada = "${proveedor.getDistrito().getId()}";


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
                                                                                <input type="text" class="form-control" id="editar-Direccion" name="editarrDireccion" value="${proveedor.getDireccion()}" placeholder="Editar Direccion" required>
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

                                                    <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarProvee${proveedor.getCodigoProveedor()}">Eliminar</button>

                                                    <!-- Ventana modal para eliminar -->
                                                    <div class="modal fade" id="eliminarProvee${proveedor.getCodigoProveedor()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <form name="form-data" action="proveedores" method="POST">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="myModalLabel">Deseas eliminar al proveedor</h5>
                                                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <input type="hidden" name="idProveedor" value="${proveedor.getCodigoProveedor()}">
                                                                        <strong style="text-align: center !important">${proveedor.getNombre()}</strong>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                        <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="${proveedor.getCodigoProveedor()}" name="accion" value="eliminar">Eliminar</button>
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
                                    <a class="page-link" href="proveedores?pagina=${pagina - 1}&cantidad=${cantidad}&q=${q}">Anterior</a>
                                </li>

                                <c:forEach var="i" begin="1" end="${paginas}">
                                    <li class="page-item ${pagina == i ? "active" : ""}">
                                        <a class="page-link" href="proveedores?pagina=${i}&cantidad=${cantidad}&q=${q}">${i}</a>
                                    </li>
                                </c:forEach>

                                <li class="page-item ${pagina == paginas ? "disabled" : ""}">
                                    <a class="page-link" href="proveedores?pagina=${pagina + 1}&cantidad=${cantidad}&q=${q}">Siguiente</a>
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
        <script src="./public/js/validacion/proveedor.js"></script>
    </body>
</html>
