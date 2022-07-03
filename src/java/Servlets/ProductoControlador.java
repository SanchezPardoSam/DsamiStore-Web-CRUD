/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.ProductoServicio;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Exception_Exception;

/**
 *
 * @author aries
 */
@WebServlet(name = "ProductoControlador", urlPatterns = {"/ProductoControlador"})
public class ProductoControlador extends HttpServlet {

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
        String index = "productos.jsp";
        String acceso = "";
        ProductoServicio producto = new ProductoServicio();

        String accion = request.getParameter("accion");

        if (accion.equals("editar")) {
            String id = request.getParameter("productoID");
            String nombre = request.getParameter("crearNombre");
            String descripcion = request.getParameter("crearDescripcion");
            String barras = request.getParameter("crearCodigo");
            double precio = Double.parseDouble(request.getParameter("crearPrecio"));
            String marca = request.getParameter("crearMarca");
            String categoria = request.getParameter("crearCategoria");
            String almacen = request.getParameter("crearAlmacen");
            String moneda = request.getParameter("crearMoneda");
            System.out.println("EDITAR");
            try {

                producto.modificarProducto(id, marca, categoria, "product_3.jpg", almacen, moneda, nombre, descripcion, barras, precio);
                System.out.println("EXITO");
            } catch (Exception_Exception ex) {
                System.out.println("ERROR");
                Logger.getLogger(ProductoControlador.class.getName()).log(Level.SEVERE, null, ex);
            }
            acceso = index;

        }
        if (accion.equals("eliminar")) {
            String id = request.getParameter("productoID");
            System.out.println(id);
            try {
                producto.eliminarProducto(id);
            } catch (Exception_Exception ex) {
                Logger.getLogger(ProductoControlador.class.getName()).log(Level.SEVERE, null, ex);
            }
            acceso = index;
        }

        if (accion.equals("agregar")) {
            String nombre = request.getParameter("crearNombre");
            String descripcion = request.getParameter("crearDescripcion");
            String barras = request.getParameter("crearCodigo");
            double precio = Double.parseDouble(request.getParameter("crearPrecio"));
            String marca = request.getParameter("crearMarca");
            String categoria = request.getParameter("crearCategoria");
            String almacen = request.getParameter("crearAlmacen");
            String moneda = request.getParameter("crearMoneda");
            System.out.println("AGREGAR");
            try {

                producto.agregarProducto(marca, categoria, "product_3.jpg", almacen,
                        moneda, nombre, descripcion, barras, precio);
                System.out.println("EXITO");
            } catch (Exception_Exception ex) {
                System.out.println("ERROR");
                Logger.getLogger(ProductoControlador.class.getName()).log(Level.SEVERE, null, ex);
            }
            acceso = index;
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
