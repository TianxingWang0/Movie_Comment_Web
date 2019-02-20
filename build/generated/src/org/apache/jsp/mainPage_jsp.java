package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class mainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=gb2312");
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\n");
      out.write("        <title>主页</title>\n");
      out.write("        <style>\n");
      out.write("            body {margin:0;}\n");
      out.write("\n");
      out.write("            ul {\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: #fff;\n");
      out.write("                position: fixed;\n");
      out.write("                top: 0;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li {\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a {\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a:hover:not(.active) {\n");
      out.write("                background-color: #111;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .active {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("            }\n");
      out.write("            .select { \n");
      out.write("                width:80px; \n");
      out.write("                height:24px; \n");
      out.write("                background:none; \n");
      out.write("                border:solid 1px #000;\n");
      out.write("            } \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String ID = (String)session.getAttribute("ID");
        
      out.write("\n");
      out.write("        <ul>\n");
      out.write("            <li><a class=\"active\" href=\"mainPage.jsp\">主页</a></li>\n");
      out.write("            <li><a href=\"index.jsp\">退出登陆</a></li>\n");
      out.write("            ");

                if (ID.equals("000000")) {
            
      out.write("\n");
      out.write("                <li><a href=\"addMoviePage.jsp\">添加电影</a></li>\n");
      out.write("                <li><a href=\"#me\">Admin</a></li>\n");
      out.write("            ");

                } else {
            
      out.write("\n");
      out.write("                <li><a href=\"meMainPage.jsp\">");
      out.print( session.getAttribute("userName") );
      out.write("</a></li>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </ul>\n");
      out.write("        <div style=\"padding:20px;margin-top:30px;height:1500px;\">\n");
      out.write("            <h1>欢迎</h1>\n");
      out.write("            <form action=\"SearchResultPage.jsp\" method=\"post\">\n");
      out.write("                <select class=\"select\" name=\"choice\">\n");
      out.write("                    <option value=\"title\">电影名称</option>\n");
      out.write("                    <option value=\"director\">导演</option>\n");
      out.write("                    <option value=\"actors\">相关主演</option>\n");
      out.write("                </select>\n");
      out.write("                <input type=\"text\" name=\"word\">\n");
      out.write("                <input type=\"submit\" name=\"submit\" value=\"搜索\">\n");
      out.write("            </form>\n");
      out.write("\n");
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
