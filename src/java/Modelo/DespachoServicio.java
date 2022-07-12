/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author fernandomonjav
 */
public class DespachoServicio {

    public String hello(java.lang.String name) {
        webservice.DespachoServicio_Service service = new webservice.DespachoServicio_Service();
        webservice.DespachoServicio port = service.getDespachoServicioPort();
        return port.hello(name);
    }

}
