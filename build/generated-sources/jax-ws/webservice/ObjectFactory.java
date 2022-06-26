
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
    private final static QName _AgregarUsuario_QNAME = new QName("http://WebService/", "agregarUsuario");
    private final static QName _AgregarUsuarioResponse_QNAME = new QName("http://WebService/", "agregarUsuarioResponse");
    private final static QName _EditarUsuario_QNAME = new QName("http://WebService/", "editarUsuario");
    private final static QName _EditarUsuarioResponse_QNAME = new QName("http://WebService/", "editarUsuarioResponse");
    private final static QName _EliminarUsuario_QNAME = new QName("http://WebService/", "eliminarUsuario");
    private final static QName _EliminarUsuarioResponse_QNAME = new QName("http://WebService/", "eliminarUsuarioResponse");
    private final static QName _ObtenerUsuarios_QNAME = new QName("http://WebService/", "obtenerUsuarios");
    private final static QName _ObtenerUsuariosResponse_QNAME = new QName("http://WebService/", "obtenerUsuariosResponse");

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
     * Create an instance of {@link AgregarUsuario }
     * 
     */
    public AgregarUsuario createAgregarUsuario() {
        return new AgregarUsuario();
    }

    /**
     * Create an instance of {@link AgregarUsuarioResponse }
     * 
     */
    public AgregarUsuarioResponse createAgregarUsuarioResponse() {
        return new AgregarUsuarioResponse();
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
     * Create an instance of {@link ObtenerUsuarios }
     * 
     */
    public ObtenerUsuarios createObtenerUsuarios() {
        return new ObtenerUsuarios();
    }

    /**
     * Create an instance of {@link ObtenerUsuariosResponse }
     * 
     */
    public ObtenerUsuariosResponse createObtenerUsuariosResponse() {
        return new ObtenerUsuariosResponse();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarUsuario")
    public JAXBElement<AgregarUsuario> createAgregarUsuario(AgregarUsuario value) {
        return new JAXBElement<AgregarUsuario>(_AgregarUsuario_QNAME, AgregarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarUsuarioResponse")
    public JAXBElement<AgregarUsuarioResponse> createAgregarUsuarioResponse(AgregarUsuarioResponse value) {
        return new JAXBElement<AgregarUsuarioResponse>(_AgregarUsuarioResponse_QNAME, AgregarUsuarioResponse.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerUsuarios }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "obtenerUsuarios")
    public JAXBElement<ObtenerUsuarios> createObtenerUsuarios(ObtenerUsuarios value) {
        return new JAXBElement<ObtenerUsuarios>(_ObtenerUsuarios_QNAME, ObtenerUsuarios.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerUsuariosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "obtenerUsuariosResponse")
    public JAXBElement<ObtenerUsuariosResponse> createObtenerUsuariosResponse(ObtenerUsuariosResponse value) {
        return new JAXBElement<ObtenerUsuariosResponse>(_ObtenerUsuariosResponse_QNAME, ObtenerUsuariosResponse.class, null, value);
    }

}
