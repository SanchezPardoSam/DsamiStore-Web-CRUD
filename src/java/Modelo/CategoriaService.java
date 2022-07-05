/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Categoria;
import webservice.Exception_Exception;

/**
 *
 * @author aries
 */
public class CategoriaService {

    public CategoriaService() {
    }

    public java.util.List<webservice.Categoria> listarCategorias() throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarCategorias();
    }
    

    public String modificarCategoria(java.lang.String id, java.lang.String nombre, java.lang.String descripcion) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.modificarCategoria(id, nombre, descripcion);
    }

    public String agregarCategoria(java.lang.String nombre, java.lang.String descripcion) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.agregarCategoria(nombre, descripcion);
    }

    public Categoria eliminarCategoria(java.lang.String id) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.eliminarCategoria(id);
    }

       
}