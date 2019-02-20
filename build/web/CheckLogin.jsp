<%-- 
    Document   : CheckLogin
    Created on : 2018-5-26, 20:11:43
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("ID");
            String Pwd = request.getParameter("password");
            if (ID.equals("000000") && Pwd.equals("wang")) {
                session.setAttribute("ID", ID);                 // 设置session
                response.setHeader("refresh", "1, URL = mainPage.jsp");
        %>
        <font color="red" size="5">Welcome！My lord!<br><br>
        <%
        } else {
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql;
            sql = "select * from user where ID = \"" + ID + "\" and password = \"" + Pwd + "\"";
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                //找到用户记录
                String userName = rs.getString("name");
                rs.close();
                stmt.close();
                conn.close();
                session.setAttribute("ID", ID);                 // 设置session
                session.setAttribute("userName", userName);
                response.setHeader("refresh", "3, URL = mainPage.jsp");     %>
        <font color="red" size="5">认证成功！<br><br>
        三秒后跳转到主页面<br><br>如果没有跳转,请按<a href="mainPage.jsp">这里</a><br>
        </font>
        <%
        } else {
            //没找到用户记录
            rs.close();
            stmt.close();
            conn.close();
            response.setHeader("refresh", "3, URL = index.jsp");     %>
        <font color="red" size="5">密码或用户ID错误！<br><br>
        三秒后跳转到登陆页面<br><br>如果没有跳转,请按<a href="index.jsp">这里</a><br>
        </font>
        <%
                }
            }
        %>
    </body>
</html>
