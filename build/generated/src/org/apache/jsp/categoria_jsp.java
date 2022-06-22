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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- CSS only -->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css\" \n");
      out.write("              rel=\"stylesheet\" integrity=\"sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"app\">\n");
      out.write("            <div class=\"app-sidebar p-3 border-end \">\n");
      out.write("                <a class=\"d-flex text-decoration-none mb-4 \" href=\"../categorias\">\n");
      out.write("                    <h4 class=\"fs-4 fw-bold text-primary\">D' Sami Store</h4>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"nav nav-pills flex-column mb-auto\">\n");
      out.write("                    <li class='nav-item'>\n");
      out.write("                        <a href=\"./categoria.jsp\" class=\"nav-link link-dark\">Categorías<a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class='nav-item' >\n");
      out.write("                        <a href=\"./rol.jsp\" class=\"nav-link link-dark\">Roles<a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"./usuario.jsp\" class=\"nav-link link-dark\">Usuarios<a>\n");
      out.write("                    </li>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"app-content\">\n");
      out.write("                <nav class=\"app-navbar navbar border-bottom bg-white\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div></div>\n");
      out.write("                        <div class=\"btn-group\">\n");
      out.write("                            <p class=\"d-flex align-items-center h-100 mt-2 my-2 mx-2\">Perfil</p>\n");
      out.write("                            <div class=\"rounded-circle overflow-hidden\" style=\"width: 42px; height: 42px; cursor: pointer;\"\n");
      out.write("                                 data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                <img src=\"https://www.pngkey.com/png/full/72-729716_user-avatar-png-graphic-free-download-icon.png\"\n");
      out.write("                                     class=\"w-100 h-100\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <ul class=\"dropdown-menu dropdown-menu-end\">\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Mi perfil</a></li>\n");
      out.write("                                <li>\n");
      out.write("                                    <hr class=\"dropdown-divider\">\n");
      out.write("                                </li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"#\">Cerrar sesión</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("               \n");
      out.write("                <div class=\"container px-4\">\n");
      out.write("                    <div class=\"py-4 bd-highlight row\">\n");
      out.write("                        <div class=\"title-proveedores py-2\">\n");
      out.write("                            <h2>Categorias</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"d-flex justify-content-between align-items-center\">\n");
      out.write("                           <div>\n");
      out.write("                               <button type=\"button\" class=\"btn btn-primary\" data-bs-toggle=\"modal\"\n");
      out.write("                                       data-bs-target=\"#agregar\">Agregar\n");
      out.write("                               </button>\n");
      out.write("                           </div>\n");
      out.write("                           <div class=\"d-flex\">\n");
      out.write("                               <input type=\"text\" class=\"form-control me-2\"\n");
      out.write("                                      placeholder=\"Buscar una categoria\" aria-label=\"Recipient's username\"\n");
      out.write("                                      aria-describedby=\"basic-addon2\">\n");
      out.write("                               <button class=\"btn btn-primary\" id=\"basic-addon2\" type=\"button \">Buscar</button>\n");
      out.write("                           </div>\n");
      out.write("                       </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <div class=\"table-responsive\">\n");
      out.write("                            <table class=\"table table-borderless\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"col\">N</th>\n");
      out.write("                                        <th scope=\"col\">Nombre</th>\n");
      out.write("                                        <th scope=\"col\">Descripcion</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");

                                       int idx = 0;
                                         CategoriaService c = new CategoriaService();
                                        List<Categoria> listCat = c.listar();
                                        for (Categoria ca : listCat) {


                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td> ");
      out.print( idx + 1);
      out.write("</td>\n");
      out.write("                                        <td> ");
      out.print( ca.getNombre());
      out.write("</td>\n");
      out.write("                                        <td> ");
      out.print( ca.getDescripcion());
      out.write("</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <div class=\"d-flex justify-content-center\">\n");
      out.write("                                                <a href=\"\" class=\"btn btn-warning\">Edit</a>\n");
      out.write("                                                <a href=\"\" class=\"btn btn-danger\">Delete</a>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                        idx++;
                                    }
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                </div>\n");
      out.write("            </div>                        \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
