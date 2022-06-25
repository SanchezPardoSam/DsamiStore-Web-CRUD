
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
    private final static QName _Eliminar_QNAME = new QName("http://WebService/", "eliminar");
    private final static QName _EliminarResponse_QNAME = new QName("http://WebService/", "eliminarResponse");
    private final static QName _Listar_QNAME = new QName("http://WebService/", "listar");
    private final static QName _ListarResponse_QNAME = new QName("http://WebService/", "listarResponse");
    private final static QName _ListarRol_QNAME = new QName("http://WebService/", "listarRol");
    private final static QName _ListarRolResponse_QNAME = new QName("http://WebService/", "listarRolResponse");
    private final static QName _ListarUsuario_QNAME = new QName("http://WebService/", "listarUsuario");
    private final static QName _ListarUsuarioResponse_QNAME = new QName("http://WebService/", "listarUsuarioResponse");
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
     * Create an instance of {@link Eliminar }
     * 
     */
    public Eliminar createEliminar() {
        return new Eliminar();
    }

    /**
     * Create an instance of {@link EliminarResponse }
     * 
     */
    public EliminarResponse createEliminarResponse() {
        return new EliminarResponse();
    }

    /**
     * Create an instance of {@link Listar }
     * 
     */
    public Listar createListar() {
        return new Listar();
    }

    /**
     * Create an instance of {@link ListarResponse }
     * 
     */
    public ListarResponse createListarResponse() {
        return new ListarResponse();
    }

    /**
     * Create an instance of {@link ListarRol }
     * 
     */
    public ListarRol createListarRol() {
        return new ListarRol();
    }

    /**
     * Create an instance of {@link ListarRolResponse }
     * 
     */
    public ListarRolResponse createListarRolResponse() {
        return new ListarRolResponse();
    }

    /**
     * Create an instance of {@link ListarUsuario }
     * 
     */
    public ListarUsuario createListarUsuario() {
        return new ListarUsuario();
    }

    /**
     * Create an instance of {@link ListarUsuarioResponse }
     * 
     */
    public ListarUsuarioResponse createListarUsuarioResponse() {
        return new ListarUsuarioResponse();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link Exception }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Exception }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "Exception")
    public JAXBElement<Exception> createException(Exception value) {
        return new JAXBElement<Exception>(_Exception_QNAME, Exception.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarCategoria }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AgregarCategoria }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarCategoria")
    public JAXBElement<AgregarCategoria> createAgregarCategoria(AgregarCategoria value) {
        return new JAXBElement<AgregarCategoria>(_AgregarCategoria_QNAME, AgregarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarCategoriaResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AgregarCategoriaResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarCategoriaResponse")
    public JAXBElement<AgregarCategoriaResponse> createAgregarCategoriaResponse(AgregarCategoriaResponse value) {
        return new JAXBElement<AgregarCategoriaResponse>(_AgregarCategoriaResponse_QNAME, AgregarCategoriaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Eliminar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Eliminar }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminar")
    public JAXBElement<Eliminar> createEliminar(Eliminar value) {
        return new JAXBElement<Eliminar>(_Eliminar_QNAME, Eliminar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link EliminarResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarResponse")
    public JAXBElement<EliminarResponse> createEliminarResponse(EliminarResponse value) {
        return new JAXBElement<EliminarResponse>(_EliminarResponse_QNAME, EliminarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Listar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Listar }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listar")
    public JAXBElement<Listar> createListar(Listar value) {
        return new JAXBElement<Listar>(_Listar_QNAME, Listar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ListarResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarResponse")
    public JAXBElement<ListarResponse> createListarResponse(ListarResponse value) {
        return new JAXBElement<ListarResponse>(_ListarResponse_QNAME, ListarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRol }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ListarRol }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRol")
    public JAXBElement<ListarRol> createListarRol(ListarRol value) {
        return new JAXBElement<ListarRol>(_ListarRol_QNAME, ListarRol.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRolResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ListarRolResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRolResponse")
    public JAXBElement<ListarRolResponse> createListarRolResponse(ListarRolResponse value) {
        return new JAXBElement<ListarRolResponse>(_ListarRolResponse_QNAME, ListarRolResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarUsuario }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ListarUsuario }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarUsuario")
    public JAXBElement<ListarUsuario> createListarUsuario(ListarUsuario value) {
        return new JAXBElement<ListarUsuario>(_ListarUsuario_QNAME, ListarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarUsuarioResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ListarUsuarioResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarUsuarioResponse")
    public JAXBElement<ListarUsuarioResponse> createListarUsuarioResponse(ListarUsuarioResponse value) {
        return new JAXBElement<ListarUsuarioResponse>(_ListarUsuarioResponse_QNAME, ListarUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarCategoria }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ModificarCategoria }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarCategoria")
    public JAXBElement<ModificarCategoria> createModificarCategoria(ModificarCategoria value) {
        return new JAXBElement<ModificarCategoria>(_ModificarCategoria_QNAME, ModificarCategoria.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarCategoriaResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link ModificarCategoriaResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarCategoriaResponse")
    public JAXBElement<ModificarCategoriaResponse> createModificarCategoriaResponse(ModificarCategoriaResponse value) {
        return new JAXBElement<ModificarCategoriaResponse>(_ModificarCategoriaResponse_QNAME, ModificarCategoriaResponse.class, null, value);
    }

}
