/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.EmpleadoServicio;
import Modelo.RolService;
import Modelo.UsuarioServicio;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Empleado;
import webservice.Exception_Exception;
import webservice.Rol;
import webservice.Usuario;

/**
 *
 * @author fernandomonjav
 */
@WebServlet("/usuarios")
public class UsuarioControlador extends HttpServlet {

    UsuarioServicio usuarioServicio = new UsuarioServicio();
    RolService rolServicio = new RolService();
    EmpleadoServicio empleadoServicio = new EmpleadoServicio();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion") != null ? request.getParameter("accion") : "listar";

        /*
        Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

        if (usuario == null) {
            response.sendRedirect(request.getContextPath() + "/auth");
            return;
        }
        */

        try {
            int pagina = request.getParameter("pagina") != null ? Integer.parseInt(request.getParameter("pagina")) : 1;
            int cantidad = request.getParameter("cantidad") != null ? Integer.parseInt(request.getParameter("cantidad")) : 5;
            String consulta = request.getParameter("q") != null ? request.getParameter("q") : "";

            int paginas = usuarioServicio.buscarUsuariosPaginacionCount(consulta, cantidad);
            List<Usuario> usuarios = usuarioServicio.buscarUsuariosPaginacion(consulta, pagina, cantidad);
            List<Rol> roles = rolServicio.listarRoles();
            List<Empleado> empleados = empleadoServicio.obtenerEmpleados();

            request.setAttribute("pagina", pagina);
            request.setAttribute("cantidad", cantidad);
            request.setAttribute("paginas", paginas);

            request.setAttribute("q", consulta);

            request.setAttribute("usuarios", usuarios);
            request.setAttribute("roles", roles);
            request.setAttribute("empleados", empleados);
        } catch (Exception_Exception ex) {

        }

        switch (accion) {
            case "listar":
                listar(request, response);
                break;
            case "agregar": {
                agregar(request, response);
                break;
            }
            case "editar": {
                editar(request, response);
                break;
            }
            case "eliminar": {
                eliminar(request, response);
                break;
            }
        }
    }

    public void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("usuarios.jsp");
        dispatcher.forward(request, response);
    }

    public void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombreUsuario = request.getParameter("nombreUsuario");
        String clave = request.getParameter("clave");
        String codigoRol = request.getParameter("codigoRol");
        String codigoEmpleado = request.getParameter("codigoEmpleado");

        try {
            usuarioServicio.crearUsuario(nombreUsuario, clave, codigoEmpleado, codigoRol);

            response.sendRedirect(request.getContextPath() + "/usuarios");

        } catch (Exception_Exception ex) {
            request.setAttribute("agregarAlertDanger", true);

            request.setAttribute("nombreUsuario", nombreUsuario);
            request.setAttribute("codigoRol", codigoRol);
            request.setAttribute("codigoEmpleado", codigoEmpleado);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("usuarios.jsp");
            dispatcher.forward(request, response);
        }

    }

    public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String codigoUsuario = request.getParameter("codigoUsuario");
        String nombreUsuario = request.getParameter("nombreUsuario");
        String clave = request.getParameter("clave");
        String codigoRol = request.getParameter("codigoRol");
        String codigoEmpleado = request.getParameter("codigoEmpleado");

        try {
            usuarioServicio.editarUsuario(codigoUsuario, nombreUsuario, clave, codigoRol);

            response.sendRedirect(request.getContextPath() + "/usuarios");

        } catch (Exception_Exception ex) {
            request.setAttribute("editarAlertDanger", true);

            request.setAttribute("codigoUsuario", codigoUsuario);
            request.setAttribute("nombreUsuario", nombreUsuario);
            request.setAttribute("codigoRol", codigoRol);
            request.setAttribute("codigoEmpleado", codigoEmpleado);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("usuarios.jsp");
            dispatcher.forward(request, response);
        }

    }

    public void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String codigoUsuario = request.getParameter("codigoUsuario");

        try {
            usuarioServicio.eliminarUsuario(codigoUsuario);

            response.sendRedirect(request.getContextPath() + "/usuarios");

        } catch (Exception_Exception ex) {
            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("usuarios.jsp");
            dispatcher.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
