/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;
import webservice.RecepcionDetalle;

/**
 *
 * @author FIORELLA
 */
public class RecepcionServicio {
    
    public RecepcionServicio(){
    }

    public java.util.List<webservice.RecepcionDetalle> listarRecepcion() throws Exception_Exception {
        webservice.RecepcionServicio_Service service = new webservice.RecepcionServicio_Service();
        webservice.RecepcionServicio port = service.getRecepcionServicioPort();
        return port.listarRecepcion();
    }

    public String agregarRecepcion(java.lang.String producto, double precioRecepcion, int cantidadRecepcion, java.lang.String empleado, java.lang.String proveedor, java.lang.String fechaPedido) throws Exception_Exception {
        webservice.RecepcionServicio_Service service = new webservice.RecepcionServicio_Service();
        webservice.RecepcionServicio port = service.getRecepcionServicioPort();
        return port.agregarRecepcion(producto, precioRecepcion, cantidadRecepcion, empleado, proveedor, fechaPedido);
    }

    public String modificarRecepcion(java.lang.String idRecepcionDetalle, java.lang.String producto, double precioRecepcion, int cantidadRecepcion, java.lang.String empleado, java.lang.String proveedor, java.lang.String fechaPedido, java.lang.String fechaRespuesta, int estado) throws Exception_Exception {
        webservice.RecepcionServicio_Service service = new webservice.RecepcionServicio_Service();
        webservice.RecepcionServicio port = service.getRecepcionServicioPort();
        return port.modificarRecepcion(idRecepcionDetalle, producto, precioRecepcion, cantidadRecepcion, empleado, proveedor, fechaPedido, fechaRespuesta, estado);
    }

    public RecepcionDetalle eliminarRecepcion(java.lang.String id) throws Exception_Exception {
        webservice.RecepcionServicio_Service service = new webservice.RecepcionServicio_Service();
        webservice.RecepcionServicio port = service.getRecepcionServicioPort();
        return port.eliminarRecepcion(id);
    }
    
    
}
