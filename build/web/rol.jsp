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
                                RolService r = new RolService();
                                List<Rol> listRol = r.listarRol();
                                int index = 1;
                                for (Rol rol : listRol) {
                            %>
                            <tr>
                                <td> <%= index%></td>
                                <td> <%= rol.getNombre()%></td>
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
