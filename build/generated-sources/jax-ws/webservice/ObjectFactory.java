
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
    private final static QName _BuscarUsuarios_QNAME = new QName("http://WebService/", "buscarUsuarios");
    private final static QName _BuscarUsuariosResponse_QNAME = new QName("http://WebService/", "buscarUsuariosResponse");
    private final static QName _CrearUsuario_QNAME = new QName("http://WebService/", "crearUsuario");
    private final static QName _CrearUsuarioResponse_QNAME = new QName("http://WebService/", "crearUsuarioResponse");
    private final static QName _EditarUsuario_QNAME = new QName("http://WebService/", "editarUsuario");
    private final static QName _EditarUsuarioResponse_QNAME = new QName("http://WebService/", "editarUsuarioResponse");
    private final static QName _EliminarUsuario_QNAME = new QName("http://WebService/", "eliminarUsuario");
    private final static QName _EliminarUsuarioResponse_QNAME = new QName("http://WebService/", "eliminarUsuarioResponse");
    private final static QName _IngresarUsuario_QNAME = new QName("http://WebService/", "ingresarUsuario");
    private final static QName _IngresarUsuarioResponse_QNAME = new QName("http://WebService/", "ingresarUsuarioResponse");
    private final static QName _ListarUsuarios_QNAME = new QName("http://WebService/", "listarUsuarios");
    private final static QName _ListarUsuariosResponse_QNAME = new QName("http://WebService/", "listarUsuariosResponse");

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
     * Create an instance of {@link BuscarUsuarios }
     * 
     */
    public BuscarUsuarios createBuscarUsuarios() {
        return new BuscarUsuarios();
    }

    /**
     * Create an instance of {@link BuscarUsuariosResponse }
     * 
     */
    public BuscarUsuariosResponse createBuscarUsuariosResponse() {
        return new BuscarUsuariosResponse();
    }

    /**
     * Create an instance of {@link CrearUsuario }
     * 
     */
    public CrearUsuario createCrearUsuario() {
        return new CrearUsuario();
    }

    /**
     * Create an instance of {@link CrearUsuarioResponse }
     * 
     */
    public CrearUsuarioResponse createCrearUsuarioResponse() {
        return new CrearUsuarioResponse();
    }

    /**
     * Create an instance of {@link EditarUsuario }
     * 
     */
    public EditarUsuario createEditarUsuario() {
        return new EditarUsuario();
    }

    /**
     * Create an instance of {@link EditarUsuarioResponse }
     * 
     */
    public EditarUsuarioResponse createEditarUsuarioResponse() {
        return new EditarUsuarioResponse();
    }

    /**
     * Create an instance of {@link EliminarUsuario }
     * 
     */
    public EliminarUsuario createEliminarUsuario() {
        return new EliminarUsuario();
    }

    /**
     * Create an instance of {@link EliminarUsuarioResponse }
     * 
     */
    public EliminarUsuarioResponse createEliminarUsuarioResponse() {
        return new EliminarUsuarioResponse();
    }

    /**
     * Create an instance of {@link IngresarUsuario }
     * 
     */
    public IngresarUsuario createIngresarUsuario() {
        return new IngresarUsuario();
    }

    /**
     * Create an instance of {@link IngresarUsuarioResponse }
     * 
     */
    public IngresarUsuarioResponse createIngresarUsuarioResponse() {
        return new IngresarUsuarioResponse();
    }

    /**
     * Create an instance of {@link ListarUsuarios }
     * 
     */
    public ListarUsuarios createListarUsuarios() {
        return new ListarUsuarios();
    }

    /**
     * Create an instance of {@link ListarUsuariosResponse }
     * 
     */
    public ListarUsuariosResponse createListarUsuariosResponse() {
        return new ListarUsuariosResponse();
    }

    /**
     * Create an instance of {@link Usuario }
     * 
     */
    public Usuario createUsuario() {
        return new Usuario();
    }

    /**
     * Create an instance of {@link Empleado }
     * 
     */
    public Empleado createEmpleado() {
        return new Empleado();
    }

    /**
     * Create an instance of {@link Persona }
     * 
     */
    public Persona createPersona() {
        return new Persona();
    }

    /**
     * Create an instance of {@link Distrito }
     * 
     */
    public Distrito createDistrito() {
        return new Distrito();
    }

    /**
     * Create an instance of {@link Provincia }
     * 
     */
    public Provincia createProvincia() {
        return new Provincia();
    }

    /**
     * Create an instance of {@link Documento }
     * 
     */
    public Documento createDocumento() {
        return new Documento();
    }

    /**
     * Create an instance of {@link Empresa }
     * 
     */
    public Empresa createEmpresa() {
        return new Empresa();
    }

    /**
     * Create an instance of {@link Region }
     * 
     */
    public Region createRegion() {
        return new Region();
    }

    /**
     * Create an instance of {@link Pais }
     * 
     */
    public Pais createPais() {
        return new Pais();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link BuscarUsuarios }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "buscarUsuarios")
    public JAXBElement<BuscarUsuarios> createBuscarUsuarios(BuscarUsuarios value) {
        return new JAXBElement<BuscarUsuarios>(_BuscarUsuarios_QNAME, BuscarUsuarios.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BuscarUsuariosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "buscarUsuariosResponse")
    public JAXBElement<BuscarUsuariosResponse> createBuscarUsuariosResponse(BuscarUsuariosResponse value) {
        return new JAXBElement<BuscarUsuariosResponse>(_BuscarUsuariosResponse_QNAME, BuscarUsuariosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CrearUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "crearUsuario")
    public JAXBElement<CrearUsuario> createCrearUsuario(CrearUsuario value) {
        return new JAXBElement<CrearUsuario>(_CrearUsuario_QNAME, CrearUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CrearUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "crearUsuarioResponse")
    public JAXBElement<CrearUsuarioResponse> createCrearUsuarioResponse(CrearUsuarioResponse value) {
        return new JAXBElement<CrearUsuarioResponse>(_CrearUsuarioResponse_QNAME, CrearUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EditarUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "editarUsuario")
    public JAXBElement<EditarUsuario> createEditarUsuario(EditarUsuario value) {
        return new JAXBElement<EditarUsuario>(_EditarUsuario_QNAME, EditarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EditarUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "editarUsuarioResponse")
    public JAXBElement<EditarUsuarioResponse> createEditarUsuarioResponse(EditarUsuarioResponse value) {
        return new JAXBElement<EditarUsuarioResponse>(_EditarUsuarioResponse_QNAME, EditarUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarUsuario")
    public JAXBElement<EliminarUsuario> createEliminarUsuario(EliminarUsuario value) {
        return new JAXBElement<EliminarUsuario>(_EliminarUsuario_QNAME, EliminarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarUsuarioResponse")
    public JAXBElement<EliminarUsuarioResponse> createEliminarUsuarioResponse(EliminarUsuarioResponse value) {
        return new JAXBElement<EliminarUsuarioResponse>(_EliminarUsuarioResponse_QNAME, EliminarUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IngresarUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "ingresarUsuario")
    public JAXBElement<IngresarUsuario> createIngresarUsuario(IngresarUsuario value) {
        return new JAXBElement<IngresarUsuario>(_IngresarUsuario_QNAME, IngresarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IngresarUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "ingresarUsuarioResponse")
    public JAXBElement<IngresarUsuarioResponse> createIngresarUsuarioResponse(IngresarUsuarioResponse value) {
        return new JAXBElement<IngresarUsuarioResponse>(_IngresarUsuarioResponse_QNAME, IngresarUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarUsuarios }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarUsuarios")
    public JAXBElement<ListarUsuarios> createListarUsuarios(ListarUsuarios value) {
        return new JAXBElement<ListarUsuarios>(_ListarUsuarios_QNAME, ListarUsuarios.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarUsuariosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarUsuariosResponse")
    public JAXBElement<ListarUsuariosResponse> createListarUsuariosResponse(ListarUsuariosResponse value) {
        return new JAXBElement<ListarUsuariosResponse>(_ListarUsuariosResponse_QNAME, ListarUsuariosResponse.class, null, value);
    }

}
