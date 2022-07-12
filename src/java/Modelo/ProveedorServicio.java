/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;
import webservice.Proveedor;

/**
 *
 * @author fernandomonjav
 */
public class ProveedorServicio {

    public java.util.List<webservice.Proveedor> listarProveedor() throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarProveedor();
    }

    public java.util.List<webservice.Proveedor> listarProveedoresPaginacion(java.lang.String consulta, int pagina, int cantidad) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarProveedoresPaginacion(consulta, pagina, cantidad);
    }

    public int listarProveedoresPaginacionCount(java.lang.String consulta, int cantidad) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarProveedoresPaginacionCount(consulta, cantidad);
    }

    public String agregarProveedor(java.lang.String empresa, java.lang.String nombre, java.lang.String apellidoPaterno, java.lang.String apellidoMaterno, java.lang.String tipoDocumento, java.lang.String numDocumento, java.lang.String fechaNac, java.lang.String pais, java.lang.String region, java.lang.String provincia, java.lang.String distrito, java.lang.String direccion) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.agregarProveedor(empresa, nombre, apellidoPaterno, apellidoMaterno, tipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
    }

    public String modificarProveedor(java.lang.String idPro, java.lang.String nombre, java.lang.String apellidoPaterno, java.lang.String apellidoMaterno, java.lang.String tipoDocumento, java.lang.String numDocumento, java.lang.String fechaNac, java.lang.String pais, java.lang.String region, java.lang.String provincia, java.lang.String distrito, java.lang.String direccion) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.modificarProveedor(idPro, nombre, apellidoPaterno, apellidoMaterno, tipoDocumento, numDocumento, fechaNac, pais, region, provincia, distrito, direccion);
    }

    public Proveedor eliminarProveedor(java.lang.String id) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.eliminarProveedor(id);
    }

    public java.util.List<webservice.Empresa> listarEmpresas() throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarEmpresas();
    }

    public java.util.List<webservice.Documento> listarDocumentos() throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarDocumentos();
    }

    public java.util.List<webservice.Pais> listarPaises() throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarPaises();
    }

    public java.util.List<webservice.Region> listarRegiones(java.lang.String pais) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarRegiones(pais);
    }

    public java.util.List<webservice.Provincia> listarProvincias(java.lang.String region) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarProvincias(region);
    }

    public java.util.List<webservice.Distrito> listarDistritos(java.lang.String provincia) throws Exception_Exception {
        webservice.ProveedorServicio_Service service = new webservice.ProveedorServicio_Service();
        webservice.ProveedorServicio port = service.getProveedorServicioPort();
        return port.listarDistritos(provincia);
    }

}
