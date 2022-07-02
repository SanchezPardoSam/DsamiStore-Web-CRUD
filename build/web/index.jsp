<%-- 
    Document   : index
    Created on : 21/06/2022, 07:00:01 PM
    Author     : aries
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/includes/head.jsp"%>
        <title>Iniciar sesion - D'SamiStore</title>
    </head>
    <body>
        <div class="navbar border-bottom">
            <div class="container">
                <a href="/" class="navbar-brand fw-bold">D'Sami Store</a>
            </div>
        </div>
        <div class="container">
            <form class="card mt-5 mx-auto" style="max-width: 512px;" action="auth" method="POST">
                <div class="card-body">
                    <div class="mt-3 mb-3">
                        <h1 class="h4 fw-bold text-center">Inicio de sesión</h1>
                    </div>
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario</label>
                        <input  class="form-control" id="username"  name="nombreUsuario" placeholder="Ingresa nombre de usario" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Clave</label>
                        <input type="password" id="password" name="clave" class="form-control" placeholder="Ingresar clave" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Acceder</button>
                    </div>
                </div>
            </form>
        </div>
        <footer>
            <div class="container position-absolute bottom-0 start-50 translate-middle-x">
                <div class="py-5">
                    <p class="text-center text-muted">© 2021 D'Sami Store</p>
                </div>
            </div>
        </footer>

    </body>
</html>
