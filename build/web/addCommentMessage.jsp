<%-- 
    Document   : addCommentMessage
    Created on : 2018-5-28, 14:00:52
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*, java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
            String comment = request.getParameter("comment");
            String ID = request.getParameter("ID");
            String commentID = (new java.util.Date()).toLocaleString() + ID;        //时间加上用户ID作为commentID
            String movieId = request.getParameter("movieId");
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql;
            sql = "insert into comment (commentID,movieId,ID,text) values (\"" + commentID + "\"," + movieId + ",\"" + ID + "\",\"" + comment + "\")";
            conn.setAutoCommit(false);
            stmt.addBatch(sql);
            stmt.executeBatch();
            conn.commit();
            stmt.close();
            conn.close();
        %>
        <font color="red" size="5">评论成功，请刷新页面<br><br>
    </body>
</html>
