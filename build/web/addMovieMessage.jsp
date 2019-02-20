<%-- 
    Document   : addMovieMessage
    Created on : 2018-5-28, 23:32:05
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {margin:0;}

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }

            .active {
                background-color: #4CAF50;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="mainPage.jsp">主页</a></li>
            <li><a href="index.jsp">退出登陆</a></li>
            <li><a class="active" href="addMoviePage.jsp">添加电影</a></li>
            <li><a href="#me">Admin</a></li>
        </ul>
        <div style="padding:20px;margin-top:30px;height:1500px;">
            <%
                response.setContentType("text/html;charset=gb2312");
                request.setCharacterEncoding("gb2312");
                String title = request.getParameter("title");
                String imgUrl = request.getParameter("imgUrl");
                String director = request.getParameter("director");
                String actors = request.getParameter("actors");
                String type = request.getParameter("type");
                String year = request.getParameter("year");
                Connection conn = null;
                Statement stmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
                stmt = conn.createStatement();
                String sql;
                sql = "select * from movie";
                ResultSet rs = stmt.executeQuery(sql);
                int i = 1;
                while (rs.next()) {
                    i++;
                }
                sql = "insert into movie values (\"" + title + "\",\"" + imgUrl + "\",\"" + director + "\",\"" + actors + "\"," + year + ",\"" + type + "\"," + Integer.toString(i) + ")";
                conn.setAutoCommit(false);
                stmt.addBatch(sql);
                stmt.executeBatch();
                conn.commit();
                rs.close();
                stmt.close();
                conn.close();
            %>
            <font color="red" size="5">成功添加<br><br>
        </div>
    </body>
</html>
