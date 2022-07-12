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
import webservice.Empleado;
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
    EmpleadoServicio empleadoServicio = new EmpleadoServicio();
    private Gson gson = new Gson();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception_Exception {
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion") != null ? request.getParameter("accion") : "listar";

        try {
            int pagina = request.getParameter("pagina") != null ? Integer.parseInt(request.getParameter("pagina")) : 1;
            int cantidad = request.getParameter("cantidad") != null ? Integer.parseInt(request.getParameter("cantidad")) : 10;
            String consulta = request.getParameter("q") != null ? request.getParameter("q") : "";

            int paginas = empleadoServicio.listarEmpleadosPaginacionCount(consulta, cantidad);
            List<Empleado> empleados = empleadoServicio.listarEmpleadosPaginacion(consulta, pagina, cantidad);
            List<Documento> documentos = empleadoServicio.listarDocumentos();
            List<Pais> paises = empleadoServicio.listarPaises();

            request.setAttribute("pagina", pagina);
            request.setAttribute("cantidad", cantidad);
            request.setAttribute("paginas", paginas);

            request.setAttribute("q", consulta);

            request.setAttribute("empleados", empleados);
            request.setAttribute("documentos", documentos);
            request.setAttribute("paises", paises);
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

        if (accion.equals("paises")) {
            List<Pais> paises = new ArrayList<>();
            paises = empleadoServicio.listarPaises();
            String paisesJsonString = this.gson.toJson(paises);

            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(paisesJsonString);
            out.flush();
            return;
        }
        if (accion.equals("regiones")) {
            String paisId = request.getParameter("paisId");

            List<Region> regionesPorPais = new ArrayList<>();
            regionesPorPais = empleadoServicio.listarRegiones(paisId);
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
            provinciasPorPais = empleadoServicio.listarProvincias(regionId);
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
            distritosPorPais = empleadoServicio.listarDistritos(provinciaId);
            String distritosJsonString = this.gson.toJson(distritosPorPais);

            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(distritosJsonString);
            out.flush();
            return;
        }
        /*
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
         */
    }

    public void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("empleados.jsp");
        dispatcher.forward(request, response);
    }

    public void agregar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        try {

            empleadoServicio.agregarEmpleado(empresa, nombre, apellidoPaterno, apellidoMaterno, idTipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);

            response.sendRedirect(request.getContextPath() + "/empleados");

        } catch (Exception_Exception ex) {
            request.setAttribute("agregarAlertDanger", true);

            request.setAttribute("idEmpresa", empresa);
            request.setAttribute("nombre", nombre);
            request.setAttribute("apellidoPaterno", apellidoPaterno);
            request.setAttribute("apellidoMaterno", apellidoPaterno);
            request.setAttribute("idTipoDocumento", idTipoDocumento);
            request.setAttribute("numDocumento", numDocumento);
            request.setAttribute("fechaNac", fechaNac);
            request.setAttribute("idPais", pais);
            request.setAttribute("idRegion", region);
            request.setAttribute("idProvincia", provincia);
            request.setAttribute("idDistrito", distrito);
            request.setAttribute("direccion", direccion);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("empleados.jsp");
            dispatcher.forward(request, response);
        }
    }

    public void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        try {
            empleadoServicio.modificarEmpleado(id, nombre, apellidoPaterno, apellidoMaterno, idTipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);

            response.sendRedirect(request.getContextPath() + "/empleados");
        } catch (Exception_Exception ex) {
            request.setAttribute("editarAlertDanger", true);

            request.setAttribute("idProveedor", id);
            request.setAttribute("nombre", nombre);
            request.setAttribute("apellidoPaterno", apellidoPaterno);
            request.setAttribute("apellidoMaterno", apellidoPaterno);
            request.setAttribute("idTipoDocumento", idTipoDocumento);
            request.setAttribute("numDocumento", numDocumento);
            request.setAttribute("fechaNac", fechaNac);
            request.setAttribute("idPais", pais);
            request.setAttribute("idRegion", region);
            request.setAttribute("idProvincia", provincia);
            request.setAttribute("idDistrito", distrito);
            request.setAttribute("direccion", direccion);

            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("empleados.jsp");
            dispatcher.forward(request, response);
        }
    }

    public void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idProveedor");
        try {
            empleadoServicio.eliminarEmpleado(id);

            response.sendRedirect(request.getContextPath() + "/empleados");

        } catch (Exception_Exception ex) {
            request.setAttribute("errorMensaje", ex.getMessage());

            RequestDispatcher dispatcher = request.getRequestDispatcher("empleados.jsp");
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
