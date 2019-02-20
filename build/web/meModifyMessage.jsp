<%-- 
    Document   : meModifyMessage
    Created on : 2018-5-29, 10:37:06
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setContentType("text/html;charset=gb2312");
            request.setCharacterEncoding("gb2312");
            String ID = (String) session.getAttribute("ID");
            String name = request.getParameter("userName");
            String userPwd = request.getParameter("userPwd");
            String confirmPwd = request.getParameter("confirmPwd");
            String email = request.getParameter("email");
            if (!userPwd.equals(confirmPwd)) {
                //确认密码错误
                response.setHeader("refresh", "3, URL = meModifyPage.jsp");     %>
        <font color="red" size="5">密码确认错误<br><br>
        三秒后跳转到个人信息修改页面<br><br>如果没有跳转,请按<a href="meModifyPage.jsp">这里</a><br>
        </font>
        <%
        } else {
            //修改信息没有问题
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql = "update user set name = \"" + name + "\", email = \"" + email + "\", password = \"" + userPwd + "\" where ID = \"" + ID + "\"";
            conn.setAutoCommit(false);
            stmt.addBatch(sql);
            stmt.executeBatch();
            conn.commit();
            stmt.close();
            conn.close();
            response.setHeader("refresh", "3, URL = meMainPage.jsp");    %>
        <font color="red" size="5">修改成功！<br><br>
        3秒后跳转到用户信息页面<br><br>如果没有跳转,请按<a href="meMainPage.jsp">这里</a><br>
        </font>
        <%
            }

        %>
    </body>
</html>
