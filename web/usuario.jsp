<%-- 
    Document   : index
    Created on : 21/06/2022, 04:58:27 PM
    Author     : aries
--%>


<%@page import="webservice.Usuario"%>
<%@page import="Modelo.UsuarioService"%>
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <a class="btn btn-primary">Nueva categoria</a>
                </div>
                <div class= "card-body">
                    <table border=1 class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                UsuarioService u = new UsuarioService();
                                List<Usuario> listUser = u.listarUsuario();
                                int index = 1;
                                for (Usuario user : listUser) {
                            %>
                            <tr>
                                <td> <%= index%></td>
                                <td> <%= user.getNombreUsuario() %></td>
                                 <td> <%= user.getCodigoEmpleado() %></td>
                                  <td> <%= user.getCodigoRol()%></td>
                                <td>
                                    <a href="" class="btn btn-warning">Edit</a>
                                    <a href="" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            <%index++; }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
    </body>
</html>
