<%-- 
    Document   : meMainPage
    Created on : 2018-5-29, 9:32:27
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
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
            <li><a class="active" href="meMainPage.jsp"><%= session.getAttribute("userName")%></a></li>
        </ul>
        <div style="padding:20px;margin-top:30px;height:1500px;">
            <%
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
            %>

            <table class="table">
                <caption>用户信息</caption>
                <tbody>
                    <tr>
                        <th>用户ID</th>
                        <td><%=ID%></td>
                    </tr>
                    <tr>
                        <th>用户名</th>
                        <td><%=name%></td>
                    </tr>
                    <tr>
                        <th>电子邮箱</th>
                        <td><%=email%></td>
                    </tr> 
                </tbody>

            </table>
            <a href="meModifyPage.jsp">修改个人信息</a>
        </div>
    </body>
</html>
