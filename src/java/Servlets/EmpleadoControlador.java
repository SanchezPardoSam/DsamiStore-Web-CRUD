/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Modelo.EmpleadoServicio;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webservice.Distrito;
import webservice.Documento;
import webservice.Empresa;
import webservice.Exception_Exception;
import webservice.Pais;
import webservice.Provincia;
import webservice.Region;

/**
 *
 * @author AndySantisteban <andyjosue160720@gmail.com>
 */
@WebServlet("/empleados")
public class EmpleadoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String index = "empleado.jsp";
    String acceso = "";
    EmpleadoServicio empleado = new EmpleadoServicio();
    private Gson gson = new Gson();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception_Exception {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion") != null ? request.getParameter("accion") : "listar";
        System.out.println(accion);

        if (accion.equals("listar")) {
            acceso = index;
        }

        if (accion.equals("regiones")) {
            String paisId = request.getParameter("paisId");

            List<Region> regionesPorPais = new ArrayList<>();
            regionesPorPais = empleado.listarRegiones(paisId);
            String regionesJsonString = this.gson.toJson(regionesPorPais);

            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(regionesJsonString);
            out.flush();
            return;
        }
        if (accion.equals("provincias")) {
            String regionId = request.getParameter("regionId");

            List<Provincia> provinciasPorPais = new ArrayList<>();
            provinciasPorPais = empleado.listarProvincias(regionId);
            String provinciasJsonString = this.gson.toJson(provinciasPorPais);

            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(provinciasJsonString);
            out.flush();
            return;
        }
        if (accion.equals("distritos")) {
            String provinciaId = request.getParameter("provinciaId");

            List<Distrito> distritosPorPais = new ArrayList<>();
            distritosPorPais = empleado.listarDistritos(provinciaId);
            String distritosJsonString = this.gson.toJson(distritosPorPais);

            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(distritosJsonString);
            out.flush();
            return;
        }
        if (accion.equals("Editar")) {
            String id = request.getParameter("idProveedor");
            String nombre = request.getParameter("nombre");
            String apellidoPaterno = request.getParameter("editarApellidoPaterno");
            String apellidoMaterno = request.getParameter("editarApellidoMaterno");
            String idTipoDocumento = request.getParameter("idTipoDocumento");
            String numDocumento = request.getParameter("editarNumDocumento");
            String fechaNac = request.getParameter("editarFechaNac");
            String pais = request.getParameter("idPais");
            String region = request.getParameter("idRegion");
            String provincia = request.getParameter("idProvincia");
            String distrito = request.getParameter("idDistrito");
            String direccion = request.getParameter("editarrDireccion");
            empleado.modificarEmpleado(id, nombre, apellidoPaterno, apellidoMaterno, idTipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
            acceso = index;

        }
        if (accion.equals("Crear")) {
            System.out.println("creaaando");
            String empresa = request.getParameter("idEmpresa");
            String nombre = request.getParameter("crearNombre");
            String apellidoPaterno = request.getParameter("crearApellidoPaterno");
            String apellidoMaterno = request.getParameter("crearApellidoMaterno");
            String idTipoDocumento = request.getParameter("idTipoDocumento");
            String numDocumento = request.getParameter("crearNumDocumento");
            String fechaNac = request.getParameter("crearFechaNac");
            String pais = request.getParameter("idPais");
            String region = request.getParameter("idRegion");
            String provincia = request.getParameter("idProvincia");
            String distrito = request.getParameter("idDistrito");
            String direccion = request.getParameter("crearDireccion");
            System.out.println("sssssssss");
            empleado.agregarEmpleado(empresa, nombre, apellidoPaterno, apellidoMaterno, idTipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
            System.out.println("terminaaa");
            acceso = index;
        }
        if (accion.equals("Borrar")) {
            String id = request.getParameter("idProveedor");
            empleado.eliminarEmpleado(id);
            acceso = index;
        }
        ArrayList<Empresa> listarEmpresas = (ArrayList<Empresa>) empleado.listarEmpresas();
        request.setAttribute("Empresas", listarEmpresas);

        ArrayList<Documento> listarDocumentos = (ArrayList<Documento>) empleado.listarDocumentos();
        request.setAttribute("Documentos", listarDocumentos);

        ArrayList<Pais> listarPaises = (ArrayList<Pais>) empleado.listarPaises();
        request.setAttribute("Paises", listarPaises);

        ArrayList<Region> listarRegiones = (ArrayList<Region>) empleado.listarRegiones(accion);
        request.setAttribute("Regiones", listarRegiones);

        ArrayList<Provincia> listarProvincias = (ArrayList<Provincia>) empleado.listarProvincias(accion);
        request.setAttribute("Provincias", listarProvincias);

        ArrayList<Distrito> listarDistritos = (ArrayList<Distrito>) empleado.listarDistritos(accion);
        request.setAttribute("Distritos", listarDistritos);

        RequestDispatcher dispatcher = request.getRequestDispatcher(acceso);
        dispatcher.forward(request, response);
        response.sendRedirect("empleado.jsp");
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
            Logger.getLogger(EmpleadoControlador.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(EmpleadoControlador.class.getName()).log(Level.SEVERE, null, ex);
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
