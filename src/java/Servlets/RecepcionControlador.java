/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.ProductoServicio;
import Modelo.RecepcionServicio;
import com.google.gson.Gson;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Exception_Exception;
import webservice.Producto;

/**
 *
 * @author FIORELLA
 */
@WebServlet("/recepciones")
public class RecepcionControlador extends HttpServlet {
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
    String index = "recepcion.jsp";
    String acceso = "";
    RecepcionServicio recepcion = new RecepcionServicio();
    private Gson gson = new Gson();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception_Exception {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion") != null ? request.getParameter("accion") : "listar";
        System.out.println(accion);
        
        try{
            List<Producto> productos = productoServicio.listarProductos();
        System.out.println(productos.size());
        System.out.println("RECEPCION");
        request.setAttribute("productos", productos);
        }catch (Exception_Exception ex) {
            
        }
        
        if (accion.equals("listar")) {
            acceso = index;
        }
       
        if (accion.equals("Crear")) {
            String empleado = request.getParameter("idEmpleado");
            String proveedor = request.getParameter("idProveedor");
            String producto = request.getParameter("idProducto");
            Double precio = Double.parseDouble(request.getParameter("crearPrecio"));
            int cantidad = Integer.parseInt(request.getParameter("crearCantidad"));
            String fechaPedido = request.getParameter("crearFechaPedido");
            recepcion.agregarRecepcion(producto, precio, cantidad, empleado, proveedor, fechaPedido);
            acceso = index;
        }
        
        if (accion.equals("Editar")) {
            String idRecepcionDetalle=request.getParameter("idRecepcion");
            String empleado = request.getParameter("idEmpleado");
            String proveedor = request.getParameter("idProveedor");
            String producto = request.getParameter("idProducto");
            Double precio = Double.parseDouble(request.getParameter("editarPrecio"));
            int cantidad = Integer.parseInt(request.getParameter("editarCantidad"));
            String fechaPedido = request.getParameter("editarFechaPedido");
            String fechaRespuesta= request.getParameter("editarFechaRespuesta");
            int estado = Integer.parseInt(request.getParameter("idEstado"));
            System.out.println(estado);
            //int estado=1;
            
            
            recepcion.modificarRecepcion(idRecepcionDetalle, producto, precio, cantidad, empleado, proveedor, fechaPedido, fechaRespuesta, estado);
            acceso = index;
        }
        
        if (accion.equals("Borrar")) {
            String id = request.getParameter("idRecepcion");
            recepcion.eliminarRecepcion(id);
            acceso = index;
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(acceso);
        dispatcher.forward(request, response);
        response.sendRedirect("recepcion.jsp");
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
        try {
            processRequest(request, response);
        } catch (Exception_Exception ex) {
            Logger.getLogger(RecepcionControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception_Exception ex) {
            Logger.getLogger(RecepcionControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
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
