package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class meMainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"./bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body {margin:0;}\n");
      out.write("\n");
      out.write("            ul {\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: #333;\n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"mainPage.jsp\">主页</a></li>\n");
      out.write("            <li><a href=\"index.jsp\">退出登陆</a></li>\n");
      out.write("            <li><a href=\"#contact\">联系</a></li>\n");
      out.write("            <li><a class=\"active\" href=\"meMainPage.jsp\">");
      out.print( session.getAttribute("userName"));
      out.write("</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <div style=\"padding:20px;margin-top:30px;height:1500px;\">\n");
      out.write("            ");

                String ID = (String) session.getAttribute("ID");
                Connection conn = null;
                Statement stmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
                stmt = conn.createStatement();
                String sql;
                sql = "select * from user where ID = \"" + ID + "\"";
                ResultSet rs = stmt.executeQuery(sql);
                rs.next();
                String name = rs.getString("name");
                String email = rs.getString("email");
                rs.close();
                stmt.close();
                conn.close();
            
      out.write("\n");
      out.write("\n");
      out.write("            <table class=\"table table-bordered\">\n");
      out.write("                <caption>用户信息</caption>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>用户ID</th>\n");
      out.write("                        <td>");
      out.print(ID);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>用户名</th>\n");
      out.write("                        <td>");
      out.print(name);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>电子邮箱</th>\n");
      out.write("                        <td>");
      out.print(email);
      out.write("</td>\n");
      out.write("                    </tr> \n");
      out.write("                </tbody>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("            <a href=\"meModifyPage.jsp\">修改个人信息</a>\n");
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
