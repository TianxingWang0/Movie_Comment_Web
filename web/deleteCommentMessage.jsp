<%-- 
    Document   : deleteCommentMessage
    Created on : 2018-5-28, 18:20:43
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
            String commentID = request.getParameter("commentID");
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql;
            sql = "delete from comment where commentID = \"" + commentID + "\"";
            conn.setAutoCommit(false);
            stmt.addBatch(sql);
            stmt.executeBatch();
            conn.commit();
            stmt.close();
            conn.close();
        %>
        <font color="red" size="5">删除评论成功，请刷新页面<br><br>
    </body>
</html>
