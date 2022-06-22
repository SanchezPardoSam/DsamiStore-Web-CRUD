
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para empleado complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="empleado"&gt;
 *   &lt;complexContent&gt;
 *     &lt;extension base="{http://WebService/}persona"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="codigoEmpleado" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="direccion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="distrito" type="{http://WebService/}distrito" minOccurs="0"/&gt;
 *         &lt;element name="documento" type="{http://WebService/}documento" minOccurs="0"/&gt;
 *         &lt;element name="empresa" type="{http://WebService/}empresa" minOccurs="0"/&gt;
 *         &lt;element name="idDistrito" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="idEmpresa" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="idProvincia" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="idRegion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="numDocum" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="provincia" type="{http://WebService/}provincia" minOccurs="0"/&gt;
 *         &lt;element name="region" type="{http://WebService/}region" minOccurs="0"/&gt;
 *         &lt;element name="tipDocumento" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/extension&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "empleado", propOrder = {
    "codigoEmpleado",
    "direccion",
    "distrito",
    "documento",
    "empresa",
    "idDistrito",
    "idEmpresa",
    "idProvincia",
    "idRegion",
    "numDocum",
    "provincia",
    "region",
    "tipDocumento"
})
public class Empleado
    extends Persona
{

    protected String codigoEmpleado;
    protected String direccion;
    protected Distrito distrito;
    protected Documento documento;
    protected Empresa empresa;
    protected String idDistrito;
    protected String idEmpresa;
    protected String idProvincia;
    protected String idRegion;
    protected String numDocum;
    protected Provincia provincia;
    protected Region region;
    protected String tipDocumento;

    /**
     * Obtiene el valor de la propiedad codigoEmpleado.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCodigoEmpleado() {
        return codigoEmpleado;
    }

    /**
     * Define el valor de la propiedad codigoEmpleado.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCodigoEmpleado(String value) {
        this.codigoEmpleado = value;
    }

    /**
     * Obtiene el valor de la propiedad direccion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * Define el valor de la propiedad direccion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDireccion(String value) {
        this.direccion = value;
    }

    /**
     * Obtiene el valor de la propiedad distrito.
     * 
     * @return
     *     possible object is
     *     {@link Distrito }
     *     
     */
    public Distrito getDistrito() {
        return distrito;
    }

    /**
     * Define el valor de la propiedad distrito.
     * 
     * @param value
     *     allowed object is
     *     {@link Distrito }
     *     
     */
    public void setDistrito(Distrito value) {
        this.distrito = value;
    }

    /**
     * Obtiene el valor de la propiedad documento.
     * 
     * @return
     *     possible object is
     *     {@link Documento }
     *     
     */
    public Documento getDocumento() {
        return documento;
    }

    /**
     * Define el valor de la propiedad documento.
     * 
     * @param value
     *     allowed object is
     *     {@link Documento }
     *     
     */
    public void setDocumento(Documento value) {
        this.documento = value;
    }

    /**
     * Obtiene el valor de la propiedad empresa.
     * 
     * @return
     *     possible object is
     *     {@link Empresa }
     *     
     */
    public Empresa getEmpresa() {
        return empresa;
    }

    /**
     * Define el valor de la propiedad empresa.
     * 
     * @param value
     *     allowed object is
     *     {@link Empresa }
     *     
     */
    public void setEmpresa(Empresa value) {
        this.empresa = value;
    }

    /**
     * Obtiene el valor de la propiedad idDistrito.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdDistrito() {
        return idDistrito;
    }

    /**
     * Define el valor de la propiedad idDistrito.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdDistrito(String value) {
        this.idDistrito = value;
    }

    /**
     * Obtiene el valor de la propiedad idEmpresa.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdEmpresa() {
        return idEmpresa;
    }

    /**
     * Define el valor de la propiedad idEmpresa.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdEmpresa(String value) {
        this.idEmpresa = value;
    }

    /**
     * Obtiene el valor de la propiedad idProvincia.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdProvincia() {
        return idProvincia;
    }

    /**
     * Define el valor de la propiedad idProvincia.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdProvincia(String value) {
        this.idProvincia = value;
    }

    /**
     * Obtiene el valor de la propiedad idRegion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdRegion() {
        return idRegion;
    }

    /**
     * Define el valor de la propiedad idRegion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdRegion(String value) {
        this.idRegion = value;
    }

    /**
     * Obtiene el valor de la propiedad numDocum.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNumDocum() {
        return numDocum;
    }

    /**
     * Define el valor de la propiedad numDocum.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumDocum(String value) {
        this.numDocum = value;
    }

    /**
     * Obtiene el valor de la propiedad provincia.
     * 
     * @return
     *     possible object is
     *     {@link Provincia }
     *     
     */
    public Provincia getProvincia() {
        return provincia;
    }

    /**
     * Define el valor de la propiedad provincia.
     * 
     * @param value
     *     allowed object is
     *     {@link Provincia }
     *     
     */
    public void setProvincia(Provincia value) {
        this.provincia = value;
    }

    /**
     * Obtiene el valor de la propiedad region.
     * 
     * @return
     *     possible object is
     *     {@link Region }
     *     
     */
    public Region getRegion() {
        return region;
    }

    /**
     * Define el valor de la propiedad region.
     * 
     * @param value
     *     allowed object is
     *     {@link Region }
     *     
     */
    public void setRegion(Region value) {
        this.region = value;
    }

    /**
     * Obtiene el valor de la propiedad tipDocumento.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipDocumento() {
        return tipDocumento;
    }

    /**
     * Define el valor de la propiedad tipDocumento.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipDocumento(String value) {
        this.tipDocumento = value;
    }

}
