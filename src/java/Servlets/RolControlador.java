/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.RolServicio;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Exception_Exception;
import webservice.Rol;
import webservice.Usuario;

/**
 *
 * @author fernandomonjav
 */
@WebServlet("/roles")
public class RolControlador extends HttpServlet {

    RolServicio rolServicio = new RolServicio();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            int cantidad = request.getParameter("cantidad") != null ? Integer.parseInt(request.getParameter("cantidad")) : 10;
            String consulta = request.getParameter("q") != null ? request.getParameter("q") : "";

            int paginas = rolServicio.listarRolesPaginacionCount(consulta, cantidad);
            List<Rol> roles = rolServicio.listarRolesPaginacion(consulta, pagina, cantidad);

            request.setAttribute("pagina", pagina);
            request.setAttribute("cantidad", cantidad);
            request.setAttribute("paginas", paginas);

            request.setAttribute("q", consulta);

            request.setAttribute("roles", roles);
        } catch (Exception_Exception ex) {

        }

        switch (accion) {
            case "listar": {
                listar(request, response);
                break;
            }
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("roles.jsp");
        dispatcher.forward(request, response);
    }

    public void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");

        try {
            rolServicio.agregarRol(nombre);

            response.sendRedirect(request.getContextPath() + "/roles");

        } catch (Exception_Exception ex) {
            request.setAttribute("agregarAlertDanger", true);

            request.setAttribute("nombre", nombre);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("roles.jsp");
            dispatcher.forward(request, response);
        }

    }

    public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String codigoRol = request.getParameter("codigoRol");
        String nombre = request.getParameter("nombre");

        try {
            rolServicio.actualizarRol(codigoRol, nombre);

            response.sendRedirect(request.getContextPath() + "/roles");

        } catch (Exception_Exception ex) {
            request.setAttribute("editarAlertDanger", true);

            request.setAttribute("codigoRol", codigoRol);
            request.setAttribute("nombre", nombre);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("roles.jsp");
            dispatcher.forward(request, response);
        }

    }

    public void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String codigoRol = request.getParameter("codigoRol");

        try {
            rolServicio.eliminarRol(codigoRol);

            response.sendRedirect(request.getContextPath() + "/roles");

        } catch (Exception_Exception ex) {
            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("roles.jsp");
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
