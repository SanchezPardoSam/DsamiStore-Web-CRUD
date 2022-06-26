/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;
import webservice.Usuario;

/**
 *
 * @author aries
 */
public class UsuarioServicio {

    public UsuarioServicio() {
    }

    public java.util.List<webservice.Usuario> obtenerUsuarios() throws Exception_Exception {
        webservice.UsuarioServicio_Service service = new webservice.UsuarioServicio_Service();
        webservice.UsuarioServicio port = service.getUsuarioServicioPort();
        return port.obtenerUsuarios();
    }

    public Usuario agregarUsuario(java.lang.String nombreUsuario, java.lang.String clave, java.lang.String codigoEmpleado, java.lang.String codigoRol) throws Exception_Exception {
        webservice.UsuarioServicio_Service service = new webservice.UsuarioServicio_Service();
        webservice.UsuarioServicio port = service.getUsuarioServicioPort();
        return port.agregarUsuario(nombreUsuario, clave, codigoEmpleado, codigoRol);
    }

    public void editarUsuario(java.lang.String codigoUsuario, java.lang.String nombreUsuario, java.lang.String clave, java.lang.String codigoRol) throws Exception_Exception {
        webservice.UsuarioServicio_Service service = new webservice.UsuarioServicio_Service();
        webservice.UsuarioServicio port = service.getUsuarioServicioPort();
        port.editarUsuario(codigoUsuario, nombreUsuario, clave, codigoRol);
    }

    public void eliminarUsuario(java.lang.String codigoUsuario) throws Exception_Exception {
        webservice.UsuarioServicio_Service service = new webservice.UsuarioServicio_Service();
        webservice.UsuarioServicio port = service.getUsuarioServicioPort();
        port.eliminarUsuario(codigoUsuario);
    }

    public java.util.List<webservice.Usuario> buscarUsuarios(java.lang.String valor) throws Exception_Exception {
        webservice.UsuarioServicio_Service service = new webservice.UsuarioServicio_Service();
        webservice.UsuarioServicio port = service.getUsuarioServicioPort();
        return port.buscarUsuarios(valor);
    }


}
