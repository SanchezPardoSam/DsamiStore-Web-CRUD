package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import webservice.Categoria;
import Modelo.CategoriaService;

public final class categoria_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <!-- CSS only -->\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css\" \r\n");
      out.write("              rel=\"stylesheet\" integrity=\"sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"app\">\r\n");
      out.write("            <div class=\"app-sidebar p-3 border-end \">\r\n");
      out.write("                <a class=\"d-flex text-decoration-none mb-4 \" href=\"../categorias\">\r\n");
      out.write("                    <h4 class=\"fs-4 fw-bold text-primary\">D' Sami Store</h4>\r\n");
      out.write("                </a>\r\n");
      out.write("                <div class=\"nav nav-pills flex-column mb-auto\">\r\n");
      out.write("                    <li class='nav-item'>\r\n");
      out.write("                        <a href=\"./categoria.jsp\" class=\"nav-link link-dark\">Categorías<a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class='nav-item' >\r\n");
      out.write("                        <a href=\"./rol.jsp\" class=\"nav-link link-dark\">Roles<a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"./usuario.jsp\" class=\"nav-link link-dark\">Usuarios<a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"app-content\">\r\n");
      out.write("                <nav class=\"app-navbar navbar border-bottom bg-white\">\r\n");
      out.write("                    <div class=\"container-fluid\">\r\n");
      out.write("                        <div></div>\r\n");
      out.write("                        <div class=\"btn-group\">\r\n");
      out.write("                            <p class=\"d-flex align-items-center h-100 mt-2 my-2 mx-2\">Perfil</p>\r\n");
      out.write("                            <div class=\"rounded-circle overflow-hidden\" style=\"width: 42px; height: 42px; cursor: pointer;\"\r\n");
      out.write("                                 data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                                <img src=\"https://www.pngkey.com/png/full/72-729716_user-avatar-png-graphic-free-download-icon.png\"\r\n");
      out.write("                                     class=\"w-100 h-100\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <ul class=\"dropdown-menu dropdown-menu-end\">\r\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Mi perfil</a></li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <hr class=\"dropdown-divider\">\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Cerrar sesión</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("               \r\n");
      out.write("                <div class=\"container px-4\">\r\n");
      out.write("                    <div class=\"py-4 bd-highlight row\">\r\n");
      out.write("                        <div class=\"title-proveedores py-2\">\r\n");
      out.write("                            <h2>Categorias</h2>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex justify-content-between align-items-center\">\r\n");
      out.write("                           <div>\r\n");
      out.write("                               <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\"\r\n");
      out.write("                                       data-bs-target=\"#agregar\">Agregar\r\n");
      out.write("                               </button>\r\n");
      out.write("                           </div>\r\n");
      out.write("                           <div class=\"d-flex\">\r\n");
      out.write("                               <input type=\"text\" class=\"form-control me-2\"\r\n");
      out.write("                                      placeholder=\"Buscar una categoria\" aria-label=\"Recipient's username\"\r\n");
      out.write("                                      aria-describedby=\"basic-addon2\">\r\n");
      out.write("                               <button class=\"btn btn-primary\" id=\"basic-addon2\" type=\"button \">Buscar</button>\r\n");
      out.write("                           </div>\r\n");
      out.write("                       </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <!-- Modal para Agregar-->\r\n");
      out.write("                <div class=\"modal fade\" id=\"agregar\" data-bs-backdrop=\"static\" data-bs-keyboard=\"false\" tabindex=\"-1\" aria-labelledby=\"staticBackdropLabel\" aria-hidden=\"true\">\r\n");
      out.write("                  <div class=\"modal-dialog modal-dialog-centered\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                      <form action=\"Controlador\">\r\n");
      out.write("                        <div class=\"modal-header\">\r\n");
      out.write("                          <h5 class=\"modal-title\" id=\"staticBackdropLabel\">Agregar categoria</h5>\r\n");
      out.write("                          <button type=\"button\" class=\"btn-close p-2\" data-bs-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                          </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("                          <div class=\"row\">\r\n");
      out.write("                            <div class=\"mb-3\">\r\n");
      out.write("                              <label for=\"agregar-nombre\" class=\"col-form-label\">Nombre</label>\r\n");
      out.write("                              <input type=\"text\" class=\"form-control\" id=\"agregar-nombre\" name=\"crearNombre\" placeholder=\"Agregar nombre\" required autofocus>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                              <label for=\"agregar-descripcion\" class=\"col-form-label\">Descripción</label>\r\n");
      out.write("                              <input type=\"text\" class=\"form-control\" id=\"agregar-descripcion\" name=\"crearDescripcion\" placeholder=\"Agregar descripción\" required>\r\n");
      out.write("                            </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"modal-footer\">\r\n");
      out.write("                          <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Cancelar</button>\r\n");
      out.write("                          <input type=\"submit\" class=\"btn btn-primary\" name=\"accion\" value=\"crear\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                      </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <!-- Mostrar tabla -->\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <div class=\"table-responsive\">\r\n");
      out.write("                        <table class=\"table table-borderless\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th scope=\"col\">N</th>\r\n");
      out.write("                                    <th scope=\"col\">Nombre</th>\r\n");
      out.write("                                    <th scope=\"col\">Descripcion</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");

                                   int idx = 0;
                                     CategoriaService c = new CategoriaService();
                                    List<Categoria> listCat = c.listar();
                                    for (Categoria ca : listCat) {


                                
      out.write("\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td> ");
      out.print( idx + 1);
      out.write("</td>\r\n");
      out.write("                                    <td> ");
      out.print( ca.getNombre());
      out.write("</td>\r\n");
      out.write("                                    <td> ");
      out.print( ca.getDescripcion());
      out.write("</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                                            <button class=\"btn btn-secondary me-2\" type=\"button\" data-bs-toggle=\"modal\" data-bs-target=\"#editarCat");
      out.print( ca.getId());
      out.write("\">\r\n");
      out.write("                                                Editar\r\n");
      out.write("                                            </button>\r\n");
      out.write("\r\n");
      out.write("                                            <!--ventana para Update--->\r\n");
      out.write("                                            <div class=\"modal fade\" id=\"editarCat");
      out.print( ca.getId());
      out.write("\" data-bs-backdrop=\"static\" data-bs-keyboard=\"false\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\" aria-labelledby=\"editaCat\">\r\n");
      out.write("                                              <div class=\"modal-dialog modal-dialog-centered\">\r\n");
      out.write("                                                <div class=\"modal-content\">\r\n");
      out.write("                                                  <div class=\"modal-header\">\r\n");
      out.write("                                                    <h5 class=\"modal-title\" id=\"staticBackdropLabel\">Editar categoria</h5>\r\n");
      out.write("                                                    <button type=\"button\" class=\"btn-close p-2\" data-bs-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                                                    </button>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("\r\n");
      out.write("                                                  <form action=\"Controlador\">\r\n");
      out.write("                                                    <input type=\"hidden\" name=\"idCategoria\" value=\"");
      out.print( ca.getId());
      out.write("\">\r\n");
      out.write("                                                    <div class=\"modal-body\" id=\"cont_modal\">\r\n");
      out.write("                                                      <div class=\"mb-3\">\r\n");
      out.write("                                                        <label for=\"editar-nombre\" class=\"col-form-label\">Nombre</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"editar-nombre\" name=\"nombre\" placeholder=\"Agregar nombre\" value=\"");
      out.print( ca.getNombre());
      out.write("\" required=\"true\">\r\n");
      out.write("                                                      </div>\r\n");
      out.write("\r\n");
      out.write("                                                      <div>\r\n");
      out.write("                                                        <label for=\"editar-descripcion\" class=\"col-form-label\">Descripción</label>\r\n");
      out.write("                                                        <input type=\"text\" class=\"form-control\" id=\"editar-descripcion\" name=\"descripcion\" placeholder=\"Agregar descripción\" value=\"");
      out.print( ca.getDescripcion());
      out.write("\" placeholder=\"\"required=\"true\">\r\n");
      out.write("                                                      </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    <div class=\"modal-footer\">\r\n");
      out.write("                                                      <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Cancelar</button>\r\n");
      out.write("                                                      <input  type=\"submit\" name=\"accion\" value=\"Editar\" class=\"btn btn-primary\" />\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                  </form>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                              </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <!---fin ventana Update --->\r\n");
      out.write("                                                \r\n");
      out.write("                                            <button class=\"btn btn-danger\" type=\"button\" data-bs-toggle=\"modal\" data-bs-target=\"#eliminarCat");
      out.print( ca.getId());
      out.write("\">Eliminar</button>\r\n");
      out.write("                                            \r\n");
      out.write("                                            <!-- Ventana modal para eliminar -->\r\n");
      out.write("                                            <div class=\"modal fade\" id=\"eliminarCat");
      out.print( ca.getId());
      out.write("\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("                                              <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                                                <div class=\"modal-content\">\r\n");
      out.write("                                                  <form name=\"form-data\" action=\"../../controllers/categorias/eliminar.php\" method=\"DELETE\">\r\n");
      out.write("                                                    <div class=\"modal-header\">\r\n");
      out.write("                                                      <h5 class=\"modal-title\" id=\"myModalLabel\">Deseas eliminar la categoria</h5>\r\n");
      out.write("                                                      <button type=\"button\" class=\"btn-close p-2\" data-bs-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                                                      </button>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    <div class=\"modal-body\">\r\n");
      out.write("                                                      <input type=\"hidden\" name=\"idCategoria\" value=\"");
      out.print( ca.getId());
      out.write("\">\r\n");
      out.write("                                                      <strong style=\"text-align: center !important\">\r\n");
      out.write("                                                          ");
      out.print( ca.getNombre() );
      out.write("\r\n");
      out.write("                                                      </strong>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"modal-footer\">\r\n");
      out.write("                                                      <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Cerrar</button>\r\n");
      out.write("                                                      <button type=\"submit\" class=\"btn btn-primary btnBorrar btn-block\" data-bs-dismiss=\"modal\" id=\"");
      out.print( ca.getId());
      out.write("\">Borrar</button>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                  </form>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                              </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <!---fin ventana eliminar--->\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                    </td>\r\n");
      out.write("\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                ");

                                    idx++;
                                }
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>                        \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("                            \r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("                integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\"\r\n");
      out.write("                crossorigin=\"anonymous\"></script>                            \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
