
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
    private final static QName _ObtenerEmpleados_QNAME = new QName("http://WebService/", "obtenerEmpleados");
    private final static QName _ObtenerEmpleadosResponse_QNAME = new QName("http://WebService/", "obtenerEmpleadosResponse");

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
     * Create an instance of {@link ObtenerEmpleados }
     * 
     */
    public ObtenerEmpleados createObtenerEmpleados() {
        return new ObtenerEmpleados();
    }

    /**
     * Create an instance of {@link ObtenerEmpleadosResponse }
     * 
     */
    public ObtenerEmpleadosResponse createObtenerEmpleadosResponse() {
        return new ObtenerEmpleadosResponse();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link Exception }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "Exception")
    public JAXBElement<Exception> createException(Exception value) {
        return new JAXBElement<Exception>(_Exception_QNAME, Exception.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleados }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "obtenerEmpleados")
    public JAXBElement<ObtenerEmpleados> createObtenerEmpleados(ObtenerEmpleados value) {
        return new JAXBElement<ObtenerEmpleados>(_ObtenerEmpleados_QNAME, ObtenerEmpleados.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleadosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "obtenerEmpleadosResponse")
    public JAXBElement<ObtenerEmpleadosResponse> createObtenerEmpleadosResponse(ObtenerEmpleadosResponse value) {
        return new JAXBElement<ObtenerEmpleadosResponse>(_ObtenerEmpleadosResponse_QNAME, ObtenerEmpleadosResponse.class, null, value);
    }

}
