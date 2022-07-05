
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
    private final static QName _AgregarProveedor_QNAME = new QName("http://WebService/", "agregarProveedor");
    private final static QName _AgregarProveedorResponse_QNAME = new QName("http://WebService/", "agregarProveedorResponse");
    private final static QName _EliminarProveedor_QNAME = new QName("http://WebService/", "eliminarProveedor");
    private final static QName _EliminarProveedorResponse_QNAME = new QName("http://WebService/", "eliminarProveedorResponse");
    private final static QName _ListarDistritos_QNAME = new QName("http://WebService/", "listarDistritos");
    private final static QName _ListarDistritosResponse_QNAME = new QName("http://WebService/", "listarDistritosResponse");
    private final static QName _ListarDocumentos_QNAME = new QName("http://WebService/", "listarDocumentos");
    private final static QName _ListarDocumentosResponse_QNAME = new QName("http://WebService/", "listarDocumentosResponse");
    private final static QName _ListarEmpresas_QNAME = new QName("http://WebService/", "listarEmpresas");
    private final static QName _ListarEmpresasResponse_QNAME = new QName("http://WebService/", "listarEmpresasResponse");
    private final static QName _ListarPaises_QNAME = new QName("http://WebService/", "listarPaises");
    private final static QName _ListarPaisesResponse_QNAME = new QName("http://WebService/", "listarPaisesResponse");
    private final static QName _ListarProveedor_QNAME = new QName("http://WebService/", "listarProveedor");
    private final static QName _ListarProveedorResponse_QNAME = new QName("http://WebService/", "listarProveedorResponse");
    private final static QName _ListarProvincias_QNAME = new QName("http://WebService/", "listarProvincias");
    private final static QName _ListarProvinciasResponse_QNAME = new QName("http://WebService/", "listarProvinciasResponse");
    private final static QName _ListarRegiones_QNAME = new QName("http://WebService/", "listarRegiones");
    private final static QName _ListarRegionesResponse_QNAME = new QName("http://WebService/", "listarRegionesResponse");
    private final static QName _ModificarProveedor_QNAME = new QName("http://WebService/", "modificarProveedor");
    private final static QName _ModificarProveedorResponse_QNAME = new QName("http://WebService/", "modificarProveedorResponse");

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
     * Create an instance of {@link AgregarProveedor }
     * 
     */
    public AgregarProveedor createAgregarProveedor() {
        return new AgregarProveedor();
    }

    /**
     * Create an instance of {@link AgregarProveedorResponse }
     * 
     */
    public AgregarProveedorResponse createAgregarProveedorResponse() {
        return new AgregarProveedorResponse();
    }

    /**
     * Create an instance of {@link EliminarProveedor }
     * 
     */
    public EliminarProveedor createEliminarProveedor() {
        return new EliminarProveedor();
    }

    /**
     * Create an instance of {@link EliminarProveedorResponse }
     * 
     */
    public EliminarProveedorResponse createEliminarProveedorResponse() {
        return new EliminarProveedorResponse();
    }

    /**
     * Create an instance of {@link ListarDistritos }
     * 
     */
    public ListarDistritos createListarDistritos() {
        return new ListarDistritos();
    }

    /**
     * Create an instance of {@link ListarDistritosResponse }
     * 
     */
    public ListarDistritosResponse createListarDistritosResponse() {
        return new ListarDistritosResponse();
    }

    /**
     * Create an instance of {@link ListarDocumentos }
     * 
     */
    public ListarDocumentos createListarDocumentos() {
        return new ListarDocumentos();
    }

    /**
     * Create an instance of {@link ListarDocumentosResponse }
     * 
     */
    public ListarDocumentosResponse createListarDocumentosResponse() {
        return new ListarDocumentosResponse();
    }

    /**
     * Create an instance of {@link ListarEmpresas }
     * 
     */
    public ListarEmpresas createListarEmpresas() {
        return new ListarEmpresas();
    }

    /**
     * Create an instance of {@link ListarEmpresasResponse }
     * 
     */
    public ListarEmpresasResponse createListarEmpresasResponse() {
        return new ListarEmpresasResponse();
    }

    /**
     * Create an instance of {@link ListarPaises }
     * 
     */
    public ListarPaises createListarPaises() {
        return new ListarPaises();
    }

    /**
     * Create an instance of {@link ListarPaisesResponse }
     * 
     */
    public ListarPaisesResponse createListarPaisesResponse() {
        return new ListarPaisesResponse();
    }

    /**
     * Create an instance of {@link ListarProveedor }
     * 
     */
    public ListarProveedor createListarProveedor() {
        return new ListarProveedor();
    }

    /**
     * Create an instance of {@link ListarProveedorResponse }
     * 
     */
    public ListarProveedorResponse createListarProveedorResponse() {
        return new ListarProveedorResponse();
    }

    /**
     * Create an instance of {@link ListarProvincias }
     * 
     */
    public ListarProvincias createListarProvincias() {
        return new ListarProvincias();
    }

    /**
     * Create an instance of {@link ListarProvinciasResponse }
     * 
     */
    public ListarProvinciasResponse createListarProvinciasResponse() {
        return new ListarProvinciasResponse();
    }

    /**
     * Create an instance of {@link ListarRegiones }
     * 
     */
    public ListarRegiones createListarRegiones() {
        return new ListarRegiones();
    }

    /**
     * Create an instance of {@link ListarRegionesResponse }
     * 
     */
    public ListarRegionesResponse createListarRegionesResponse() {
        return new ListarRegionesResponse();
    }

    /**
     * Create an instance of {@link ModificarProveedor }
     * 
     */
    public ModificarProveedor createModificarProveedor() {
        return new ModificarProveedor();
    }

    /**
     * Create an instance of {@link ModificarProveedorResponse }
     * 
     */
    public ModificarProveedorResponse createModificarProveedorResponse() {
        return new ModificarProveedorResponse();
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
     * Create an instance of {@link Empresa }
     * 
     */
    public Empresa createEmpresa() {
        return new Empresa();
    }

    /**
     * Create an instance of {@link Proveedor }
     * 
     */
    public Proveedor createProveedor() {
        return new Proveedor();
    }

    /**
     * Create an instance of {@link Persona }
     * 
     */
    public Persona createPersona() {
        return new Persona();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarProveedor")
    public JAXBElement<AgregarProveedor> createAgregarProveedor(AgregarProveedor value) {
        return new JAXBElement<AgregarProveedor>(_AgregarProveedor_QNAME, AgregarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "agregarProveedorResponse")
    public JAXBElement<AgregarProveedorResponse> createAgregarProveedorResponse(AgregarProveedorResponse value) {
        return new JAXBElement<AgregarProveedorResponse>(_AgregarProveedorResponse_QNAME, AgregarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarProveedor")
    public JAXBElement<EliminarProveedor> createEliminarProveedor(EliminarProveedor value) {
        return new JAXBElement<EliminarProveedor>(_EliminarProveedor_QNAME, EliminarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "eliminarProveedorResponse")
    public JAXBElement<EliminarProveedorResponse> createEliminarProveedorResponse(EliminarProveedorResponse value) {
        return new JAXBElement<EliminarProveedorResponse>(_EliminarProveedorResponse_QNAME, EliminarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarDistritos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarDistritos")
    public JAXBElement<ListarDistritos> createListarDistritos(ListarDistritos value) {
        return new JAXBElement<ListarDistritos>(_ListarDistritos_QNAME, ListarDistritos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarDistritosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarDistritosResponse")
    public JAXBElement<ListarDistritosResponse> createListarDistritosResponse(ListarDistritosResponse value) {
        return new JAXBElement<ListarDistritosResponse>(_ListarDistritosResponse_QNAME, ListarDistritosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarDocumentos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarDocumentos")
    public JAXBElement<ListarDocumentos> createListarDocumentos(ListarDocumentos value) {
        return new JAXBElement<ListarDocumentos>(_ListarDocumentos_QNAME, ListarDocumentos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarDocumentosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarDocumentosResponse")
    public JAXBElement<ListarDocumentosResponse> createListarDocumentosResponse(ListarDocumentosResponse value) {
        return new JAXBElement<ListarDocumentosResponse>(_ListarDocumentosResponse_QNAME, ListarDocumentosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEmpresas }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarEmpresas")
    public JAXBElement<ListarEmpresas> createListarEmpresas(ListarEmpresas value) {
        return new JAXBElement<ListarEmpresas>(_ListarEmpresas_QNAME, ListarEmpresas.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEmpresasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarEmpresasResponse")
    public JAXBElement<ListarEmpresasResponse> createListarEmpresasResponse(ListarEmpresasResponse value) {
        return new JAXBElement<ListarEmpresasResponse>(_ListarEmpresasResponse_QNAME, ListarEmpresasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarPaises }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarPaises")
    public JAXBElement<ListarPaises> createListarPaises(ListarPaises value) {
        return new JAXBElement<ListarPaises>(_ListarPaises_QNAME, ListarPaises.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarPaisesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarPaisesResponse")
    public JAXBElement<ListarPaisesResponse> createListarPaisesResponse(ListarPaisesResponse value) {
        return new JAXBElement<ListarPaisesResponse>(_ListarPaisesResponse_QNAME, ListarPaisesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProveedor")
    public JAXBElement<ListarProveedor> createListarProveedor(ListarProveedor value) {
        return new JAXBElement<ListarProveedor>(_ListarProveedor_QNAME, ListarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProveedorResponse")
    public JAXBElement<ListarProveedorResponse> createListarProveedorResponse(ListarProveedorResponse value) {
        return new JAXBElement<ListarProveedorResponse>(_ListarProveedorResponse_QNAME, ListarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProvincias }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProvincias")
    public JAXBElement<ListarProvincias> createListarProvincias(ListarProvincias value) {
        return new JAXBElement<ListarProvincias>(_ListarProvincias_QNAME, ListarProvincias.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProvinciasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarProvinciasResponse")
    public JAXBElement<ListarProvinciasResponse> createListarProvinciasResponse(ListarProvinciasResponse value) {
        return new JAXBElement<ListarProvinciasResponse>(_ListarProvinciasResponse_QNAME, ListarProvinciasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRegiones }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRegiones")
    public JAXBElement<ListarRegiones> createListarRegiones(ListarRegiones value) {
        return new JAXBElement<ListarRegiones>(_ListarRegiones_QNAME, ListarRegiones.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarRegionesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listarRegionesResponse")
    public JAXBElement<ListarRegionesResponse> createListarRegionesResponse(ListarRegionesResponse value) {
        return new JAXBElement<ListarRegionesResponse>(_ListarRegionesResponse_QNAME, ListarRegionesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarProveedor")
    public JAXBElement<ModificarProveedor> createModificarProveedor(ModificarProveedor value) {
        return new JAXBElement<ModificarProveedor>(_ModificarProveedor_QNAME, ModificarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ModificarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "modificarProveedorResponse")
    public JAXBElement<ModificarProveedorResponse> createModificarProveedorResponse(ModificarProveedorResponse value) {
        return new JAXBElement<ModificarProveedorResponse>(_ModificarProveedorResponse_QNAME, ModificarProveedorResponse.class, null, value);
    }

}
