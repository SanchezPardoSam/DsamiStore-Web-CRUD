
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
    private final static QName _AgregarCategoria_QNAME = new QName("http://WebService/", "agregarCategoria");
    private final static QName _AgregarCategoriaResponse_QNAME = new QName("http://WebService/", "agregarCategoriaResponse");
    private final static QName _EliminarCategoria_QNAME = new QName("http://WebService/", "eliminarCategoria");
    private final static QName _EliminarCategoriaResponse_QNAME = new QName("http://WebService/", "eliminarCategoriaResponse");
    private final static QName _ListarCategorias_QNAME = new QName("http://WebService/", "listarCategorias");
    private final static QName _ListarCategoriasResponse_QNAME = new QName("http://WebService/", "listarCategoriasResponse");
    private final static QName _ListarRoles_QNAME = new QName("http://WebService/", "listarRoles");
    private final static QName _ListarRolesResponse_QNAME = new QName("http://WebService/", "listarRolesResponse");
    private final static QName _ModificarCategoria_QNAME = new QName("http://WebService/", "modificarCategoria");
    private final static QName _ModificarCategoriaResponse_QNAME = new QName("http://WebService/", "modificarCategoriaResponse");

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
     * Create an instance of {@link AgregarCategoria }
     * 
     */
    public AgregarCategoria createAgregarCategoria() {
        return new AgregarCategoria();
    }

    /**
     * Create an instance of {@link AgregarCategoriaResponse }
     * 
     */
    public AgregarCategoriaResponse createAgregarCategoriaResponse() {
        return new AgregarCategoriaResponse();
    }

    /**
     * Create an instance of {@link EliminarCategoria }
     * 
     */
    public EliminarCategoria createEliminarCategoria() {
        return new EliminarCategoria();
    }

    /**
     * Create an instance of {@link EliminarCategoriaResponse }
     * 
     */
    public EliminarCategoriaResponse createEliminarCategoriaResponse() {
        return new EliminarCategoriaResponse();
    }

    /**
     * Create an instance of {@link ListarCategorias }
     * 
     */
    public ListarCategorias createListarCategorias() {
        return new ListarCategorias();
    }

    /**
     * Create an instance of {@link ListarCategoriasResponse }
     * 
     */
    public ListarCategoriasResponse createListarCategoriasResponse() {
        return new ListarCategoriasResponse();
    }

    /**
     * Create an instance of {@link ListarRoles }
     * 
     */
    public ListarRoles createListarRoles() {
        return new ListarRoles();
    }

    /**
     * Create an instance of {@link ListarRolesResponse }
     * 
     */
    public ListarRolesResponse createListarRolesResponse() {
        return new ListarRolesResponse();
    }

    /**
     * Create an instance of {@link ModificarCategoria }
     * 
     */
    public ModificarCategoria createModificarCategoria() {
        return new ModificarCategoria();
    }

    /**
     * Create an instance of {@link ModificarCategoriaResponse }
     * 
     */
    public ModificarCategoriaResponse createModificarCategoriaResponse() {
        return new ModificarCategoriaResponse();
    }

    /**
     * Create an instance of {@link Categoria }
     * 
     */
    public Categoria createCategoria() {
        return new Categoria();
    }

    /**
     * Create an instance of {@link Rol }
     * 
     */
    public Rol createRol() {
        return new Rol();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarCategoria }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarCategoria")
    public JAXBElement<AgregarCategoria> createAgregarCategoria(AgregarCategoria value) {
        return new JAXBElement<AgregarCategoria>(_AgregarCategoria_QNAME, AgregarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarCategoriaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarCategoriaResponse")
    public JAXBElement<AgregarCategoriaResponse> createAgregarCategoriaResponse(AgregarCategoriaResponse value) {
        return new JAXBElement<AgregarCategoriaResponse>(_AgregarCategoriaResponse_QNAME, AgregarCategoriaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarCategoria }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarCategoria")
    public JAXBElement<EliminarCategoria> createEliminarCategoria(EliminarCategoria value) {
        return new JAXBElement<EliminarCategoria>(_EliminarCategoria_QNAME, EliminarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarCategoriaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarCategoriaResponse")
    public JAXBElement<EliminarCategoriaResponse> createEliminarCategoriaResponse(EliminarCategoriaResponse value) {
        return new JAXBElement<EliminarCategoriaResponse>(_EliminarCategoriaResponse_QNAME, EliminarCategoriaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCategorias }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarCategorias")
    public JAXBElement<ListarCategorias> createListarCategorias(ListarCategorias value) {
        return new JAXBElement<ListarCategorias>(_ListarCategorias_QNAME, ListarCategorias.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCategoriasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarCategoriasResponse")
    public JAXBElement<ListarCategoriasResponse> createListarCategoriasResponse(ListarCategoriasResponse value) {
        return new JAXBElement<ListarCategoriasResponse>(_ListarCategoriasResponse_QNAME, ListarCategoriasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRoles }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRoles")
    public JAXBElement<ListarRoles> createListarRoles(ListarRoles value) {
        return new JAXBElement<ListarRoles>(_ListarRoles_QNAME, ListarRoles.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRolesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRolesResponse")
    public JAXBElement<ListarRolesResponse> createListarRolesResponse(ListarRolesResponse value) {
        return new JAXBElement<ListarRolesResponse>(_ListarRolesResponse_QNAME, ListarRolesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarCategoria }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarCategoria")
    public JAXBElement<ModificarCategoria> createModificarCategoria(ModificarCategoria value) {
        return new JAXBElement<ModificarCategoria>(_ModificarCategoria_QNAME, ModificarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarCategoriaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarCategoriaResponse")
    public JAXBElement<ModificarCategoriaResponse> createModificarCategoriaResponse(ModificarCategoriaResponse value) {
        return new JAXBElement<ModificarCategoriaResponse>(_ModificarCategoriaResponse_QNAME, ModificarCategoriaResponse.class, null, value);
    }

}
