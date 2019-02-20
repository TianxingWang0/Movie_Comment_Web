<%-- 
    Document   : meModifyPage
    Created on : 2018-5-29, 9:57:54
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
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
                String password = rs.getString("password");
                rs.close();
                stmt.close();
                conn.close();
            %>
            <form class="form-horizontal" role="form" action="meModifyMessage.jsp" method="post">
                <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input name="userName" type="text" class="form-control" id="firstname" 
                               value=<%=name%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">修改密码</label>
                    <div class="col-sm-10">
                        <input name="userPwd" type="password" class="form-control" id="lastname" 
                               value=<%=password%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-10">
                        <input name="confirmPwd" type="password" class="form-control" id="lastname" 
                               value=<%=password%>>
                    </div>
                </div>    
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">邮箱地址</label>
                    <div class="col-sm-10">
                        <input name="email" type="text" class="form-control" id="lastname" 
                               value=<%=email%>>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
