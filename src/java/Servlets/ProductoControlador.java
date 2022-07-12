/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.ProductoServicio;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Almacen;
import webservice.Categoria;
import webservice.Exception_Exception;
import webservice.Marca;
import webservice.Moneda;
import webservice.Producto;

/**
 *
 * @author aries
 */
@WebServlet("/productos")
public class ProductoControlador extends HttpServlet {

    ProductoServicio productoServicio = new ProductoServicio();

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

        try {
            int pagina = request.getParameter("pagina") != null ? Integer.parseInt(request.getParameter("pagina")) : 1;
            int cantidad = request.getParameter("cantidad") != null ? Integer.parseInt(request.getParameter("cantidad")) : 10;
            String consulta = request.getParameter("q") != null ? request.getParameter("q") : "";

            int paginas = productoServicio.listarProductosPaginacionCount(consulta, cantidad);
            List<Producto> productos = productoServicio.listarProductosPaginacion(consulta, pagina, cantidad);
            List<Marca> marcas = productoServicio.listarMarca();
            List<Categoria> categorias = productoServicio.listarCategoria();
            List<Almacen> almacenes = productoServicio.listarAlmacen();
            List<Moneda> monedas = productoServicio.listarMoneda();

            request.setAttribute("pagina", pagina);
            request.setAttribute("cantidad", cantidad);
            request.setAttribute("paginas", paginas);

            request.setAttribute("q", consulta);

            request.setAttribute("productos", productos);
            request.setAttribute("marcas", marcas);
            request.setAttribute("categorias", categorias);
            request.setAttribute("almacenes", almacenes);
            request.setAttribute("monedas", monedas);
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("productos.jsp");
        dispatcher.forward(request, response);
    }

    public void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("crearNombre");
        String descripcion = request.getParameter("crearDescripcion");
        String barras = request.getParameter("crearCodigo");
        double precio = Double.parseDouble(request.getParameter("crearPrecio"));
        String marca = request.getParameter("crearMarca");
        String categoria = request.getParameter("crearCategoria");
        String almacen = request.getParameter("crearAlmacen");
        String moneda = request.getParameter("crearMoneda");

        try {
            System.out.println("marca 1: " + marca);
            System.out.println("categoria 1: " + categoria);
            productoServicio.agregarProducto(marca, categoria, "product_3.jpg", almacen,
                    moneda, nombre, descripcion, barras, precio);

            response.sendRedirect(request.getContextPath() + "/productos");
        } catch (Exception_Exception ex) {
            request.setAttribute("agregarAlertDanger", true);

            request.setAttribute("nombre", nombre);
            request.setAttribute("descripcion", descripcion);
            request.setAttribute("barras", barras);
            request.setAttribute("precio", precio);
            request.setAttribute("marca", marca);
            request.setAttribute("categoria", categoria);
            request.setAttribute("almacen", almacen);
            request.setAttribute("moneda", moneda);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("productos.jsp");
            dispatcher.forward(request, response);
        }
    }

    public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("productoID");
        String nombre = request.getParameter("crearNombre");
        String descripcion = request.getParameter("crearDescripcion");
        String barras = request.getParameter("crearCodigo");
        double precio = Double.parseDouble(request.getParameter("crearPrecio"));
        String marca = request.getParameter("crearMarca");
        String categoria = request.getParameter("crearCategoria");
        String almacen = request.getParameter("crearAlmacen");
        String moneda = request.getParameter("crearMoneda");

        try {

            productoServicio.modificarProducto(id, marca, categoria, "product_3.jpg", almacen, moneda, nombre, descripcion, barras, precio);

            response.sendRedirect(request.getContextPath() + "/productos");
        } catch (Exception_Exception ex) {
            request.setAttribute("editarAlertDanger", true);

            request.setAttribute("productoID", id);
            request.setAttribute("nombre", nombre);
            request.setAttribute("descripcion", descripcion);
            request.setAttribute("barras", barras);
            request.setAttribute("precio", precio);
            request.setAttribute("marca", marca);
            request.setAttribute("categoria", categoria);
            request.setAttribute("almacen", almacen);
            request.setAttribute("moneda", moneda);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("productos.jsp");
            dispatcher.forward(request, response);
        }
    }

    public void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("productoID");

        try {
            productoServicio.eliminarProducto(id);

            response.sendRedirect(request.getContextPath() + "/productos");

        } catch (Exception_Exception ex) {
            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("productos.jsp");
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
