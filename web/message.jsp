<%-- 
    Document   : message
    Created on : 2018-5-26, 19:20:11
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
            String userName = request.getParameter("userName");
            String userPwd = request.getParameter("userPwd");
            String confirmPwd = request.getParameter("confirmPwd");
            String email = request.getParameter("email");
            if (!userPwd.equals(confirmPwd)) {
                //确认密码错误
                response.setHeader("refresh", "3, URL = register.jsp");     %>
        <font size="5">密码确认错误<br>
        三秒后跳转到注册页面<br>果没有跳转,请按<a href="register.jsp">这里</a><br>
        </font>
        <%
            } else {
                //注册信息没有问题
                Connection conn = null;
                Statement stmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
                stmt = conn.createStatement();               
                ResultSet rs = stmt.executeQuery("select * from user");
                int i = 0;
                while (rs.next()) {
                    i++;
                }
                String tmp = Integer.toString(i);
                for (int j = i; j < 100000; j *= 10) {
                    tmp = "0" + tmp;
                }                                           //为新用户编码六位ID
                String sql;
                sql = "insert into user values (\"" + tmp + "\"" + ",\"" + userPwd + "\"," + "\"" + userName + "\"," +  "\"" + email + "\")";
                conn.setAutoCommit(false);
                stmt.addBatch(sql);
                stmt.executeBatch();
                conn.commit();
                rs.close();
                stmt.close();
                conn.close(); 
                response.setHeader("refresh", "5, URL = index.jsp");     %>
        <font size="5">注册成功！请记住您的用户ID：<%=tmp%><br>
        5秒后跳转到登陆页面<br>果没有跳转,请按<a href="index.jsp">这里</a><br>
        </font>
        <%        
            }

        %>
    </body>
</html>
