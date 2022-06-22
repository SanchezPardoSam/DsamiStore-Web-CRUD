<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="webservice.Rol"%>
<%@page import="Modelo.RolService"%>
<%@page import="java.util.List"%>
<%@page import="webservice.Categoria"%>
<%@page import="Modelo.CategoriaService"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="app">
            <div class="app-sidebar p-3 border-end ">
                <a class="d-flex text-decoration-none mb-4 " href="../categorias">
                    <h4 class="fs-4 fw-bold text-primary">D' Sami Store</h4>
                </a>
                <div class="nav nav-pills flex-column mb-auto">
                    <li class='nav-item'>
                        <a href="./categoria.jsp" class="nav-link link-dark">Categorías<a>
                    </li>
                    <li class='nav-item' >
                        <a href="./rol.jsp" class="nav-link link-dark">Roles<a>
                    </li>
                    <li>
                        <a href="./usuario.jsp" class="nav-link link-dark">Usuarios<a>
                    </li>
                </div>
            </div>
            
            <div class="app-content">
                <nav class="app-navbar navbar border-bottom bg-white">
                    <div class="container-fluid">
                        <div></div>
                        <div class="btn-group">
                            <p class="d-flex align-items-center h-100 mt-2 my-2 mx-2">Perfil</p>
                            <div class="rounded-circle overflow-hidden" style="width: 42px; height: 42px; cursor: pointer;"
                                 data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="https://www.pngkey.com/png/full/72-729716_user-avatar-png-graphic-free-download-icon.png"
                                     class="w-100 h-100"/>
                            </div>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li><a class="dropdown-item" href="#">Mi perfil</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                            </ul>
                        </div>

                    </div>
                </nav>
               
                <div class="container px-4">
                    <div class="py-4 bd-highlight row">
                        <div class="title-proveedores py-2">
                            <h2>Roles</h2>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                           <div>
                               <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#agregar">Agregar
                               </button>
                           </div>
                           <div class="d-flex">
                               <input type="text" class="form-control me-2"
                                      placeholder="Buscar una rol" aria-label="Recipient's username"
                                      aria-describedby="basic-addon2">
                               <button class="btn btn-primary" id="basic-addon2" type="button ">Buscar</button>
                           </div>
                       </div>
                    </div>
                </div>

                <div class="card">
                    <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th scope="col">N</th>
                                        <th scope="col">Nombre</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <%
                                    int idx = 0;
                                    RolService r = new RolService();
                                    List<Rol> listRol = r.listarRol();
                                    for (Rol rol : listRol) {
                                %>
                            <tr>
                                <td> <%= idx + 1%></td>
                                <td> <%= rol.getNombre()%></td>
                                <td>
                                    <div class="d-flex justify-content-center">
                                    <a href="" class="btn btn-warning">Edit</a>
                                    <a href="" class="btn btn-danger">Delete</a>
                                    </div>
                                </td>
                            </tr>
                            <%idx++; }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
    </body>
</html>
