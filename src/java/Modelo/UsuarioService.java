/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;

/**
 *
 * @author aries
 */
public class UsuarioService {

    public UsuarioService() {
    }

    public  java.util.List<webservice.Usuario> listarUsuario() throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarUsuario();
    }
    
}
