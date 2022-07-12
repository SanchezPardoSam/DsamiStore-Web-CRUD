/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Exception_Exception;
import webservice.Producto;

/**
 *
 * @author fernandomonjav
 */
public class ProductoServicio {

    public String agregarProducto(java.lang.String marcaID, java.lang.String categoriaID, java.lang.String imagenID, java.lang.String almacenID, java.lang.String monedaID, java.lang.String nombre, java.lang.String descripcion, java.lang.String codBarras, double precio) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.agregarProducto(marcaID, categoriaID, imagenID, almacenID, monedaID, nombre, descripcion, codBarras, precio);
    }

    public Producto buscarProducto(java.lang.String productoID) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.buscarProducto(productoID);
    }

    public String eliminarProducto(java.lang.String productoID) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.eliminarProducto(productoID);
    }

    public java.util.List<webservice.Almacen> listarAlmacen() throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarAlmacen();
    }

    public java.util.List<webservice.Categoria> listarCategoria() throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarCategoria();
    }

    public java.util.List<webservice.Marca> listarMarca() throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarMarca();
    }

    public java.util.List<webservice.Moneda> listarMoneda() throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarMoneda();
    }

    public java.util.List<webservice.Producto> listarProductos() throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarProductos();
    }

    public java.util.List<webservice.Producto> listarProductosPaginacion(java.lang.String consulta, int pagina, int cantidad) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarProductosPaginacion(consulta, pagina, cantidad);
    }

    public int listarProductosPaginacionCount(java.lang.String consulta, int cantidad) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.listarProductosPaginacionCount(consulta, cantidad);
    }

    public String modificarProducto(java.lang.String productoID, java.lang.String marcaID, java.lang.String categoriaID, java.lang.String imagenID, java.lang.String almacenID, java.lang.String monedaID, java.lang.String nombre, java.lang.String descripcion, java.lang.String codBarras, double precio) throws Exception_Exception {
        webservice.ProductoServicio_Service service = new webservice.ProductoServicio_Service();
        webservice.ProductoServicio port = service.getProductoServicioPort();
        return port.modificarProducto(productoID, marcaID, categoriaID, imagenID, almacenID, monedaID, nombre, descripcion, codBarras, precio);
    }

}
