<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : FIORELLA
--%>


<%@page import="java.util.List"%>
<%@page import="webservice.Distrito"%>
<%@page import="webservice.Provincia"%>
<%@page import="webservice.Region"%>
<%@page import="webservice.Pais"%>
<%@page import="webservice.Documento"%>
<%@page import="webservice.Empresa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="webservice.Proveedor"%>
<%@page import="Modelo.ProveedorServicio"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%Proveedor provee = null;
    ProveedorServicio proveeServi = new ProveedorServicio();

    List<Distrito> Distritos = null;
    List<Empresa> emp = null;
    List<Documento> docu = null;
    List<Pais> Paises = null;
    List<Region> Regiones = null;
    List<Provincia> Provincias = null;%>

<%

    String codigoPais = null, codigoRegion, codigoProvincia;
%>
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
                    <div class="modal fade" id="agregar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <form name="form-data" action="proveedores" method="POST">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar proveedor</h5>
                                        <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                        </button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="mb-3">
                                                <label for="agregar-idEmpresa" class="col-form-label">Empresa</label>
                                                <select class="form-select" id="agregar-idEmpresa" name="idEmpresa" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Empresa</option>
                                                    <%                                                                                                            try {
                                                            emp = proveeServi.listarEmpresas();
                                                            for (Empresa empresa : emp) {
                                                                out.print("<option value=\"" + empresa.getIdEmpresa() + "\" " + (provee != null && empresa.getIdEmpresa() == provee.getEmpresa().getIdEmpresa() ? "selected" : "") + ">" + empresa.getRazonSocial() + "</option>");
                                                            }
                                                        } catch (Exception e) {
                                                            out.print("<option value=\"0\">No se pudo listar" + "las categorias</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-nombre" class="col-form-label">Nombre</label>
                                                <input type="text" class="form-control" id="agregar-nombre" name="crearNombre" placeholder="Agregar nombre" required autofocus>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoPaterno" name="crearApellidoPaterno" placeholder="Agregar apellidoPaterno" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                <input type="text" class="form-control" id="agregar-apellidoMaterno" name="crearApellidoMaterno" placeholder="Agregar apellidoMaterno" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                <select class="form-select" id="agregar-idTipoDocumento" name="idTipoDocumento" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Tipo de documento</option>
                                                    <%
                                                        try {
                                                            docu = proveeServi.listarDocumentos();
                                                            for (Documento documento : docu) {
                                                                out.print("<option value=\"" + documento.getId() + "\" " + (provee != null && documento.getId() == provee.getEmpresa().getIdEmpresa() ? "selected" : "") + ">" + documento.getNombre() + "</option>");
                                                            }
                                                        } catch (Exception e) {
                                                            out.print("<option value=\"0\">No se pudo listar" + "las categorias</option>");
                                                        }%>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-numDocumento" class="col-form-label">Nº de documento</label>
                                                <input type="text" class="form-control" id="agregar-numDocumento" name="crearNumDocumento" placeholder="Agregar numDocumento" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                <input type="date" class="form-control" id="agregar-fechaNac" name="crearFechaNac" placeholder="Agregar fecha de nacimiento" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-idPais" class="col-form-label">Pais</label>
                                                <select class="form-select" id="agregar-idPais" accion="idPais" name="idPais" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Pais</option>
                                                    <%
                                                        try {
                                                            Paises = proveeServi.listarPaises();
                                                            for (Pais pais : Paises) {
                                                                out.print("<option value=\"" + pais.getId() + "\" " + (provee != null && pais.getId() == provee.getPais().getId() ? "selected" : "") + ">" + pais.getNombre() + "</option>");
                                                            }
                                                        } catch (Exception e) {
                                                            out.print("<option value=\"0\">No se pudo listar" + "las categorias</option>");
                                                        }%>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label  for="agregar-idRegion" class="col-form-label">Region</label>
                                                <select class="form-select" id="agregar-idRegion" accion="idRegion" name="idRegion" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Region</option>

                                                </select>                                                                                                    
                                            </div>
                                            <div class="mb-3">
                                                <label for="agregar-idProvincia" class="col-form-label">Provincia</label>
                                                <select class="form-select" id="agregar-idProvincia" accion="idProvincia" name="idProvincia" aria-label=".form-select-sm example">
                                                    <option selected>Seleccionar Provincia</option>

                                                </select>
                                            </div>
                                            <div class="mb-3">
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
                                            <div class="mb-3">
                                                <label for="agregar-Direccion" class="col-form-label">Direccion</label>
                                                <input type="text" class="form-control" id="agregar-Direccion" name="crearDireccion" placeholder="Agregar Direccion" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                            <input type="submit" class="btn btn-primary"  name="accion" value="Crear" />
                                        </div>
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
                                        <th scope="col">Nº Documento</th>
                                        <th scope="col">Empresa</th> 
                                        <th scope="col">Direccion</th>
                                        <th scope="col" class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int idx = 0;
                                        ProveedorServicio p = new ProveedorServicio();
                                        List<Proveedor> listPro = p.listarProveedor();
                                        for (Proveedor pro : listPro) {
                                    %>
                                    <tr>
                                        <td> <%= idx + 1%></td>
                                        <td> <%= pro.getNombre()%></td>
                                        <td> <%= pro.getNumDocum()%></td>
                                        <td> <%= pro.getEmpresa().getRazonSocial()%></td>
                                        <td> <%= pro.getDireccion()%></td>
                                        <td>
                                            <div class="d-flex justify-content-center">
                                                <button class="btn btn-secondary me-2" type="button" data-bs-toggle="modal" data-bs-target="#editarProvee<%= pro.getCodigoProveedor()%>">
                                                    Editar
                                                </button>

                                                <!--ventana para Editar--->
                                                <div class="modal fade" id="editarProvee<%= pro.getCodigoProveedor()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="editaCat">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="staticBackdropLabel">Editar proveedor</h5>
                                                                <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                </button>
                                                            </div>

                                                            <form name="form-data" action="proveedores" method="POST">
                                                                <input type="hidden" name="idProveedor" value="<%= pro.getCodigoProveedor()%>">
                                                                <div class="modal-body" id="cont_modal">

                                                                    <div class="mb-3">
                                                                        <label for="editar-idEmpresa" class="col-form-label">Empresa</label>
                                                                        <select class="form-select" id="editar-idEmpresa" name="idEmpresa" value="<%= pro.getEmpresa().getIdEmpresa()%>"aria-label=".form-select-sm example">
                                                                            <%
                                                                                ProveedorServicio empre2 = new ProveedorServicio();
                                                                                List<Empresa> listEmp = empre2.listarEmpresas();
                                                                                for (Empresa empresa : listEmp) {
                                                                            %>
                                                                            <option <%= pro.getEmpresa().getIdEmpresa().equals(empresa.getIdEmpresa()) ? "selected" : ""%> value="<%= empresa.getIdEmpresa()%>"><%= empresa.getRazonSocial()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-nombre" class="col-form-label">Nombre</label>
                                                                        <input type="text" class="form-control" id="editar-nombre" name="nombre" placeholder="Editar nombre" value="<%= pro.getNombre()%>" required="true">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-apellidoPaterno" class="col-form-label">Apellido Paterno</label>
                                                                        <input type="text" class="form-control" id="editar-apellidoPaterno" name="editarApellidoPaterno" value="<%= pro.getApellidoPaterno()%>" placeholder="Editar apellidoPaterno" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-apellidoMaterno" class="col-form-label">Apellido Materno</label>
                                                                        <input type="text" class="form-control" id="editar-apellidoMaterno" name="editarApellidoMaterno" value="<%= pro.getApellidoMaterno()%>" placeholder="Editar apellidoMaterno" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-idTipoDocumento" class="col-form-label">Tipo de documento</label>
                                                                        <select class="form-select" id="editar-idTipoDocumento" name="idTipoDocumento" value="<%= pro.getDocumento().getId()%>" aria-label=".form-select-sm example">
                                                                            <%
                                                                                List<Documento> listDoc = proveeServi.listarDocumentos();
                                                                                for (Documento document : listDoc) {
                                                                            %>
                                                                            <option <%= pro.getDocumento().getId().equals(document.getId()) ? "selected" : ""%> value="<%= document.getId()%>"><%= document.getNombre()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-numDocumento" class="col-form-label">Nº de documento</label>
                                                                        <input type="text" class="form-control" id="editar-numDocumento" value="<%= pro.getNumDocum()%>" name="editarNumDocumento" placeholder="Editar numDocumento" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-fechaNac" class="col-form-label">Fecha de nacimiento</label>
                                                                        <input type="date" class="form-control" id="editar-fechaNac" name="editarFechaNac" value="<%=  new SimpleDateFormat("yyyy-MM-dd").format(pro.getFechaNacimiento().toGregorianCalendar().getTime())/*new SimpleDateFormat("yyyy-MM-dd").format(pro.getFechaNacimiento().toGregorianCalendar().getTime())  */%>" >

                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-idPais" class="col-form-label">Pais</label>
                                                                        <select class="form-select" id="editar-idPais-<%= pro.getCodigoProveedor()%>" accion="idPais" name="idPais" value="<%= pro.getPais().getId()%>" aria-label=".form-select-sm example">
                                                                            <option>Seleccionar Pais</option>;
                                                                            <%
                                                                                List<Pais> listPa = proveeServi.listarPaises();
                                                                                for (Pais pais : listPa) {
                                                                            %>
                                                                            <option <%= pro.getPais().getId().equals(pais.getId()) ? "selected" : ""%> name="idPais" value="<%= pais.getId()%>"><%= pais.getNombre()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-idRegion" class="col-form-label">Region</label>
                                                                        <select class="form-select" id="editar-idRegion-<%= pro.getCodigoProveedor()%>" accion="idRegion" name="idRegion" aria-label=".form-select-sm example">
                                                                            <%
                                                                                List<Region> listRe = proveeServi.listarRegiones(pro.getPais().getId());
                                                                                System.out.println();
                                                                                for (Region region : listRe) {
                                                                            %>
                                                                            <option <%= pro.getRegion().getId().equals(region.getId()) ? "selected" : ""%> value="<%= region.getId()%>"><%= region.getNombre()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-idProvincia" class="col-form-label">Provincia</label>
                                                                        <select class="form-select" id="editar-idProvincia-<%= pro.getCodigoProveedor()%>" accion="idProvincia" name="idProvincia" aria-label=".form-select-sm example">
                                                                            <%
                                                                                List<Provincia> listPrvc = proveeServi.listarProvincias(pro.getIdRegion());
                                                                                for (Provincia provincia : listPrvc) {
                                                                            %>
                                                                            <option <%= pro.getProvincia().getId().equals(provincia.getId()) ? "selected" : ""%> value="<%= provincia.getId()%>"><%= provincia.getNombre()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="editar-idDistrito" class="col-form-label">Distrito</label>
                                                                        <select class="form-select" id="editar-idDistrito-<%= pro.getCodigoProveedor()%>" accion="idDistrito" name="idDistrito" aria-label=".form-select-sm example">
                                                                            <%
                                                                                List<Distrito> listDis = proveeServi.listarDistritos(pro.getIdProvincia());
                                                                                for (Distrito distrito : listDis) {
                                                                            %>
                                                                            <option <%= pro.getDistrito().getId().equals(distrito.getId()) ? "selected" : ""%> value="<%= distrito.getId()%>"><%= distrito.getNombre()%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                    <script>
                                                                        (() => {
                                                                            const paisSelectEl = document.getElementById("editar-idPais-<%= pro.getCodigoProveedor()%>");
                                                                            const regionSelectEl = document.getElementById("editar-idRegion-<%= pro.getCodigoProveedor()%>");
                                                                            const provinciaSelectEl = document.getElementById("editar-idProvincia-<%= pro.getCodigoProveedor()%>");
                                                                            const distritoSelectEl = document.getElementById("editar-idDistrito-<%= pro.getCodigoProveedor()%>");


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
                                                                    <div class="mb-3">
                                                                        <label for="editar-Direccion" class="col-form-label">Direccion</label>
                                                                        <input type="text" class="form-control" id="editar-Direccion" name="editarrDireccion" value="<%= pro.getDireccion()%>" placeholder="Editar Direccion" required>
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                                    <input  type="submit" name="accion" value="Editar" class="btn btn-primary" />
                                                                </div>
                                                        </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <!---fin ventana para Editar --->

                                            <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#eliminarProvee<%=pro.getCodigoProveedor()%>">Eliminar</button>

                                            <!-- Ventana modal para eliminar -->
                                            <div class="modal fade" id="eliminarProvee<%= pro.getCodigoProveedor()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <form name="form-data" action="proveedores" method="DELETE">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="myModalLabel">Deseas eliminar al proveedor</h5>
                                                                <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close">
                                                                </button>
                                                            </div>

                                                            <div class="modal-body">
                                                                <input type="hidden" name="idProveedor" value="<%= pro.getCodigoProveedor()%>">
                                                                <strong style="text-align: center !important">
                                                                    <%= pro.getNombre()%>
                                                                </strong>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                <button type="submit" class="btn btn-primary btnBorrar btn-block" data-bs-dismiss="modal" id="<%= pro.getCodigoProveedor()%>" name="accion" value="Borrar">Eliminar</button>
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
    </body>
</html>
