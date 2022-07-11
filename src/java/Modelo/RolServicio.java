/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;
import webservice.Rol;

/**
 *
 * @author aries
 */
public class RolServicio {

    public RolServicio() {
    }

    public java.util.List<webservice.Rol> listarRoles() throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        return port.listarRoles();
    }

    public int listarRolesPaginacionCount(java.lang.String consulta, int cantidad) throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        return port.listarRolesPaginacionCount(consulta, cantidad);
    }

    public java.util.List<webservice.Rol> listarRolesPaginacion(java.lang.String consulta, int pagina, int cantidad) throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        return port.listarRolesPaginacion(consulta, pagina, cantidad);
    }

    public Rol agregarRol(java.lang.String nombre) throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        return port.agregarRol(nombre);
    }

    public Rol actualizarRol(java.lang.String codigoRol, java.lang.String nombre) throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        return port.actualizarRol(codigoRol, nombre);
    }

    public void eliminarRol(java.lang.String codigoRol) throws Exception_Exception {
        webservice.RolServicio_Service service = new webservice.RolServicio_Service();
        webservice.RolServicio port = service.getRolServicioPort();
        port.eliminarRol(codigoRol);
    }

}
