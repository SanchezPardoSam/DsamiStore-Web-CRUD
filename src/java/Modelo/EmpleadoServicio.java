/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.List;
import webservice.Exception_Exception;
import webservice.Empleado;

/**
 *
 * @author AndySantisteban <andyjosue160720@gmail.com>
 */
public class EmpleadoServicio {

    public String agregarEmpleado(java.lang.String empresa, java.lang.String nombre, java.lang.String apellidoPaterno, java.lang.String apellidoMaterno, java.lang.String tipoDocumento, java.lang.String numDocumento, java.lang.String fechaNac, java.lang.String pais, java.lang.String region, java.lang.String provincia, java.lang.String distrito, java.lang.String direccion) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.agregarEmpleado(empresa, nombre, apellidoPaterno, apellidoMaterno, tipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
    }
    
    

    public java.util.List<webservice.Distrito> listarDistritos(java.lang.String provincia) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarDistritos(provincia);
    }

    public java.util.List<webservice.Documento> listarDocumentos() throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarDocumentos();
    }

    public List<Empleado> listarEmpleado() throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarEmpleado();
    }

    public java.util.List<webservice.Empresa> listarEmpresas() throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarEmpresas();
    }

    public java.util.List<webservice.Pais> listarPaises() throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarPaises();
    }

    public java.util.List<webservice.Provincia> listarProvincias(java.lang.String region) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarProvincias(region);
    }

    public java.util.List<webservice.Region> listarRegiones(java.lang.String pais) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listarRegiones(pais);
    }

    public String modificarEmpleado(java.lang.String idPro, java.lang.String nombre, java.lang.String apellidoPaterno, java.lang.String apellidoMaterno, java.lang.String tipoDocumento, java.lang.String numDocumento, java.lang.String fechaNac, java.lang.String pais, java.lang.String region, java.lang.String provincia, java.lang.String distrito, java.lang.String direccion) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.modificarEmpleado(idPro, nombre, apellidoPaterno, apellidoMaterno, tipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
    }

    public Empleado eliminarEmpleado(java.lang.String id) throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.eliminarEmpleado(id);
    }

}
