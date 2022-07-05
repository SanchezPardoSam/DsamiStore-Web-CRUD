<div class="app-sidebar p-3 border-end ">
    <a class="d-flex text-decoration-none mb-4 " href="${pageContext.request.contextPath}/categoria.jsp">
        <h4 class="fs-4 fw-bold text-primary">D' Sami Store</h4>
    </a>
    <div class="nav nav-pills flex-column mb-auto">
        <li class='nav-item'>
            <a href="${pageContext.request.contextPath}/categorias.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/categorias.jsp') ? 'active' : 'link-dark'}">Categorias</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/productos.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/productos.jsp') ? 'active' : 'link-dark'}">Productos</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/empleados.jsp" class="nav-link ${pageContext.request.requestURI.endsWith('/empleados.jsp') ? 'active' : 'link-dark'}">Empleados</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/proveedores"  class="nav-link ${pageContext.request.requestURI.endsWith('/proveedores.jsp') ? 'active' : 'link-dark'}">Proveedores</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/usuarios" class="nav-link ${pageContext.request.requestURI.endsWith('/usuarios.jsp') ? 'active' : 'link-dark'}">Usuarios</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/roles.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/roles.jsp') ? 'active' : 'link-dark'}">Roles</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/recepcion.jsp" class="nav-link ${pageContext.request.requestURI.endsWith('/recepcion.jsp') ? 'active' : 'link-dark'}">Recepcion</a>
        </li>
        <li class='nav-item' >
            <a href="${pageContext.request.contextPath}/despacho.jsp"  class="nav-link ${pageContext.request.requestURI.endsWith('/despacho.jsp') ? 'active' : 'link-dark'}">Despacho</a>
        </li>
    </div>
</div>