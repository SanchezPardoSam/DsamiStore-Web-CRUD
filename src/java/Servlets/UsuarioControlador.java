/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.UsuarioServicio;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Exception_Exception;
import webservice.Usuario;

/**
 *
 * @author fernandomonjav
 */
public class UsuarioControlador extends HttpServlet {

    UsuarioServicio usuarioNegocio = new UsuarioServicio();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        String acceso = "";

        if (accion.equals("agregar")) {
            String nombreUsuario = request.getParameter("nombreUsuario");
            String clave = request.getParameter("clave");
            String codigoRol = request.getParameter("codigoRol");
            String codigoEmpleado = request.getParameter("codigoEmpleado");

            try {
                usuarioNegocio.agregarUsuario(nombreUsuario, clave, codigoEmpleado, codigoRol);
            } catch (Exception_Exception ex) {
                Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
            }

            acceso = "usuario.jsp";

        } else if (accion.equals("editar")) {
            String codigoUsuario = request.getParameter("codigoUsuario");
            String nombreUsuario = request.getParameter("nombreUsuario");
            String clave = request.getParameter("clave");
            String codigoRol = request.getParameter("codigoRol");

            try {
                usuarioNegocio.editarUsuario(codigoUsuario, nombreUsuario, clave, codigoRol);
            } catch (Exception_Exception ex) {
                Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
            }

            acceso = "usuario.jsp";
        } else if (accion.equals("eliminar")) {
            String codigoUsuario = request.getParameter("codigoUsuario");

            try {
                usuarioNegocio.eliminarUsuario(codigoUsuario);
            } catch (Exception_Exception ex) {
                Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
            }

            acceso = "usuario.jsp";
        } else if (accion.equals("buscar")) {
            String valor = request.getParameter("valor");

            try {
                List<Usuario> usuarios = usuarioNegocio.buscarUsuarios(valor);
                request.setAttribute("usuarios", usuarios);
            } catch (Exception_Exception ex) {
                Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
            }

            acceso = "usuario.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(acceso);
        dispatcher.forward(request, response);
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
