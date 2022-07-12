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
public class CategoriaService {

    public CategoriaService() {
    }

    public java.util.List<webservice.Categoria> listarCategorias() throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarCategorias();
    }

    public java.util.List<webservice.Categoria> listarCategoriasPaginacion(java.lang.String consulta, int pagina, int cantidad) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarCategoriasPaginacion(consulta, pagina, cantidad);
    }

    public int listarCategoriasPaginacionCount(java.lang.String consulta, int cantidad) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarCategoriasPaginacionCount(consulta, cantidad);
    }

    public void agregarCategoria(java.lang.String nombre, java.lang.String descripcion) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        port.agregarCategoria(nombre, descripcion);
    }

    public void modificarCategoria(java.lang.String id, java.lang.String nombre, java.lang.String descripcion) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        port.modificarCategoria(id, nombre, descripcion);
    }

    public void eliminarCategoria(java.lang.String id) throws Exception_Exception {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        port.eliminarCategoria(id);
    }

}
