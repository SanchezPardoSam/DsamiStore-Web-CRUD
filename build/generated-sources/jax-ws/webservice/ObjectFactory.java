
package webservice;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the webservice package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Exception_QNAME = new QName("http://WebService/", "Exception");
    private final static QName _AgregarProducto_QNAME = new QName("http://WebService/", "agregarProducto");
    private final static QName _AgregarProductoResponse_QNAME = new QName("http://WebService/", "agregarProductoResponse");
    private final static QName _Almacen_QNAME = new QName("http://WebService/", "almacen");
    private final static QName _BuscarProducto_QNAME = new QName("http://WebService/", "buscarProducto");
    private final static QName _BuscarProductoResponse_QNAME = new QName("http://WebService/", "buscarProductoResponse");
    private final static QName _EliminarProducto_QNAME = new QName("http://WebService/", "eliminarProducto");
    private final static QName _EliminarProductoResponse_QNAME = new QName("http://WebService/", "eliminarProductoResponse");
    private final static QName _ListarAlmacen_QNAME = new QName("http://WebService/", "listarAlmacen");
    private final static QName _ListarAlmacenResponse_QNAME = new QName("http://WebService/", "listarAlmacenResponse");
    private final static QName _ListarCategoria_QNAME = new QName("http://WebService/", "listarCategoria");
    private final static QName _ListarCategoriaResponse_QNAME = new QName("http://WebService/", "listarCategoriaResponse");
    private final static QName _ListarMarca_QNAME = new QName("http://WebService/", "listarMarca");
    private final static QName _ListarMarcaResponse_QNAME = new QName("http://WebService/", "listarMarcaResponse");
    private final static QName _ListarMoneda_QNAME = new QName("http://WebService/", "listarMoneda");
    private final static QName _ListarMonedaResponse_QNAME = new QName("http://WebService/", "listarMonedaResponse");
    private final static QName _ListarProductos_QNAME = new QName("http://WebService/", "listarProductos");
    private final static QName _ListarProductosResponse_QNAME = new QName("http://WebService/", "listarProductosResponse");
    private final static QName _Marca_QNAME = new QName("http://WebService/", "marca");
    private final static QName _ModificarProducto_QNAME = new QName("http://WebService/", "modificarProducto");
    private final static QName _ModificarProductoResponse_QNAME = new QName("http://WebService/", "modificarProductoResponse");
    private final static QName _Moneda_QNAME = new QName("http://WebService/", "moneda");
    private final static QName _Producto_QNAME = new QName("http://WebService/", "producto");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: webservice
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Exception }
     * 
     */
    public Exception createException() {
        return new Exception();
    }

    /**
     * Create an instance of {@link AgregarProducto }
     * 
     */
    public AgregarProducto createAgregarProducto() {
        return new AgregarProducto();
    }

    /**
     * Create an instance of {@link AgregarProductoResponse }
     * 
     */
    public AgregarProductoResponse createAgregarProductoResponse() {
        return new AgregarProductoResponse();
    }

    /**
     * Create an instance of {@link Almacen }
     * 
     */
    public Almacen createAlmacen() {
        return new Almacen();
    }

    /**
     * Create an instance of {@link BuscarProducto }
     * 
     */
    public BuscarProducto createBuscarProducto() {
        return new BuscarProducto();
    }

    /**
     * Create an instance of {@link BuscarProductoResponse }
     * 
     */
    public BuscarProductoResponse createBuscarProductoResponse() {
        return new BuscarProductoResponse();
    }

    /**
     * Create an instance of {@link EliminarProducto }
     * 
     */
    public EliminarProducto createEliminarProducto() {
        return new EliminarProducto();
    }

    /**
     * Create an instance of {@link EliminarProductoResponse }
     * 
     */
    public EliminarProductoResponse createEliminarProductoResponse() {
        return new EliminarProductoResponse();
    }

    /**
     * Create an instance of {@link ListarAlmacen }
     * 
     */
    public ListarAlmacen createListarAlmacen() {
        return new ListarAlmacen();
    }

    /**
     * Create an instance of {@link ListarAlmacenResponse }
     * 
     */
    public ListarAlmacenResponse createListarAlmacenResponse() {
        return new ListarAlmacenResponse();
    }

    /**
     * Create an instance of {@link ListarCategoria }
     * 
     */
    public ListarCategoria createListarCategoria() {
        return new ListarCategoria();
    }

    /**
     * Create an instance of {@link ListarCategoriaResponse }
     * 
     */
    public ListarCategoriaResponse createListarCategoriaResponse() {
        return new ListarCategoriaResponse();
    }

    /**
     * Create an instance of {@link ListarMarca }
     * 
     */
    public ListarMarca createListarMarca() {
        return new ListarMarca();
    }

    /**
     * Create an instance of {@link ListarMarcaResponse }
     * 
     */
    public ListarMarcaResponse createListarMarcaResponse() {
        return new ListarMarcaResponse();
    }

    /**
     * Create an instance of {@link ListarMoneda }
     * 
     */
    public ListarMoneda createListarMoneda() {
        return new ListarMoneda();
    }

    /**
     * Create an instance of {@link ListarMonedaResponse }
     * 
     */
    public ListarMonedaResponse createListarMonedaResponse() {
        return new ListarMonedaResponse();
    }

    /**
     * Create an instance of {@link ListarProductos }
     * 
     */
    public ListarProductos createListarProductos() {
        return new ListarProductos();
    }

    /**
     * Create an instance of {@link ListarProductosResponse }
     * 
     */
    public ListarProductosResponse createListarProductosResponse() {
        return new ListarProductosResponse();
    }

    /**
     * Create an instance of {@link Marca }
     * 
     */
    public Marca createMarca() {
        return new Marca();
    }

    /**
     * Create an instance of {@link ModificarProducto }
     * 
     */
    public ModificarProducto createModificarProducto() {
        return new ModificarProducto();
    }

    /**
     * Create an instance of {@link ModificarProductoResponse }
     * 
     */
    public ModificarProductoResponse createModificarProductoResponse() {
        return new ModificarProductoResponse();
    }

    /**
     * Create an instance of {@link Moneda }
     * 
     */
    public Moneda createMoneda() {
        return new Moneda();
    }

    /**
     * Create an instance of {@link Producto }
     * 
     */
    public Producto createProducto() {
        return new Producto();
    }

    /**
     * Create an instance of {@link Categoria }
     * 
     */
    public Categoria createCategoria() {
        return new Categoria();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Exception }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "Exception")
    public JAXBElement<Exception> createException(Exception value) {
        return new JAXBElement<Exception>(_Exception_QNAME, Exception.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarProducto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarProducto")
    public JAXBElement<AgregarProducto> createAgregarProducto(AgregarProducto value) {
        return new JAXBElement<AgregarProducto>(_AgregarProducto_QNAME, AgregarProducto.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarProductoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarProductoResponse")
    public JAXBElement<AgregarProductoResponse> createAgregarProductoResponse(AgregarProductoResponse value) {
        return new JAXBElement<AgregarProductoResponse>(_AgregarProductoResponse_QNAME, AgregarProductoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Almacen }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "almacen")
    public JAXBElement<Almacen> createAlmacen(Almacen value) {
        return new JAXBElement<Almacen>(_Almacen_QNAME, Almacen.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BuscarProducto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "buscarProducto")
    public JAXBElement<BuscarProducto> createBuscarProducto(BuscarProducto value) {
        return new JAXBElement<BuscarProducto>(_BuscarProducto_QNAME, BuscarProducto.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BuscarProductoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "buscarProductoResponse")
    public JAXBElement<BuscarProductoResponse> createBuscarProductoResponse(BuscarProductoResponse value) {
        return new JAXBElement<BuscarProductoResponse>(_BuscarProductoResponse_QNAME, BuscarProductoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProducto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarProducto")
    public JAXBElement<EliminarProducto> createEliminarProducto(EliminarProducto value) {
        return new JAXBElement<EliminarProducto>(_EliminarProducto_QNAME, EliminarProducto.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProductoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarProductoResponse")
    public JAXBElement<EliminarProductoResponse> createEliminarProductoResponse(EliminarProductoResponse value) {
        return new JAXBElement<EliminarProductoResponse>(_EliminarProductoResponse_QNAME, EliminarProductoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAlmacen }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarAlmacen")
    public JAXBElement<ListarAlmacen> createListarAlmacen(ListarAlmacen value) {
        return new JAXBElement<ListarAlmacen>(_ListarAlmacen_QNAME, ListarAlmacen.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAlmacenResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarAlmacenResponse")
    public JAXBElement<ListarAlmacenResponse> createListarAlmacenResponse(ListarAlmacenResponse value) {
        return new JAXBElement<ListarAlmacenResponse>(_ListarAlmacenResponse_QNAME, ListarAlmacenResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCategoria }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarCategoria")
    public JAXBElement<ListarCategoria> createListarCategoria(ListarCategoria value) {
        return new JAXBElement<ListarCategoria>(_ListarCategoria_QNAME, ListarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCategoriaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarCategoriaResponse")
    public JAXBElement<ListarCategoriaResponse> createListarCategoriaResponse(ListarCategoriaResponse value) {
        return new JAXBElement<ListarCategoriaResponse>(_ListarCategoriaResponse_QNAME, ListarCategoriaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMarca }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarMarca")
    public JAXBElement<ListarMarca> createListarMarca(ListarMarca value) {
        return new JAXBElement<ListarMarca>(_ListarMarca_QNAME, ListarMarca.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMarcaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarMarcaResponse")
    public JAXBElement<ListarMarcaResponse> createListarMarcaResponse(ListarMarcaResponse value) {
        return new JAXBElement<ListarMarcaResponse>(_ListarMarcaResponse_QNAME, ListarMarcaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMoneda }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarMoneda")
    public JAXBElement<ListarMoneda> createListarMoneda(ListarMoneda value) {
        return new JAXBElement<ListarMoneda>(_ListarMoneda_QNAME, ListarMoneda.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMonedaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarMonedaResponse")
    public JAXBElement<ListarMonedaResponse> createListarMonedaResponse(ListarMonedaResponse value) {
        return new JAXBElement<ListarMonedaResponse>(_ListarMonedaResponse_QNAME, ListarMonedaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProductos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProductos")
    public JAXBElement<ListarProductos> createListarProductos(ListarProductos value) {
        return new JAXBElement<ListarProductos>(_ListarProductos_QNAME, ListarProductos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProductosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProductosResponse")
    public JAXBElement<ListarProductosResponse> createListarProductosResponse(ListarProductosResponse value) {
        return new JAXBElement<ListarProductosResponse>(_ListarProductosResponse_QNAME, ListarProductosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Marca }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "marca")
    public JAXBElement<Marca> createMarca(Marca value) {
        return new JAXBElement<Marca>(_Marca_QNAME, Marca.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarProducto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarProducto")
    public JAXBElement<ModificarProducto> createModificarProducto(ModificarProducto value) {
        return new JAXBElement<ModificarProducto>(_ModificarProducto_QNAME, ModificarProducto.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarProductoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarProductoResponse")
    public JAXBElement<ModificarProductoResponse> createModificarProductoResponse(ModificarProductoResponse value) {
        return new JAXBElement<ModificarProductoResponse>(_ModificarProductoResponse_QNAME, ModificarProductoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Moneda }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "moneda")
    public JAXBElement<Moneda> createMoneda(Moneda value) {
        return new JAXBElement<Moneda>(_Moneda_QNAME, Moneda.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Producto }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "producto")
    public JAXBElement<Producto> createProducto(Producto value) {
        return new JAXBElement<Producto>(_Producto_QNAME, Producto.class, null, value);
    }

}
