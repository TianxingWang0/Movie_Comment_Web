package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Bootstrap 实例 - 倒置的导航栏</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./searchTab.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"Ts spe\">\n");
      out.write("                            <select name=\"choice\">\n");
      out.write("                    <option value=\"title\">电影名称</option>\n");
      out.write("                    <option value=\"director\">导演</option>\n");
      out.write("                    <option value=\"actors\">相关主演</option>\n");
      out.write("                </select>\n");
      out.write("            <div class=\"dp\" onmouseout=\"this.parentNode.className = 'Ts spe'\" onmouseover=\"this.parentNode.className = 'Ts spe hover'\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <form action=\"/s.php\" method=\"get\" name=\"sform\">\n");
      out.write("                <input size=\"30\" name=\"q\" id=\"keyword\" type=\"text\" class=\"si grey\" value=\"影片名/ 明星/ 导演/ 地区/ 年代/ imdb\" onclick=\"if (this.value === '影片名/ 明星/ 导演/ 地区/ 年代/ imdb')\n");
      out.write("                            this.value = '';\n");
      out.write("                        this.className = 'si'\"><input value=\"搜 索\" class=\"sbt\" type=\"submit\" onclick=\"return ckSearch();\">\n");
      out.write("            </form>\n");
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
