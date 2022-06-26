/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;

/**
 *
 * @author fernandomonjav
 */
public class EmpleadoServicio {

    public java.util.List<webservice.Empleado> listar() throws Exception_Exception {
        webservice.EmpleadoServicio_Service service = new webservice.EmpleadoServicio_Service();
        webservice.EmpleadoServicio port = service.getEmpleadoServicioPort();
        return port.listar();
    }
    
}
