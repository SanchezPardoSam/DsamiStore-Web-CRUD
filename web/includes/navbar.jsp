 
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
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth?accion=salir">Cerrar sesi�n</a></li>
            </ul>
        </div>
    </div>
</nav>