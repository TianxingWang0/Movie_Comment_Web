<%-- 
    Document   : mainPage
    Created on : 2018-5-25, 19:38:11
    Author     : 28347
--%>

<%@page language="java" import="java.util.*" contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>��ҳ</title>
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
            .select { 
                width:80px; 
                height:24px; 
                background:none; 
                border:solid 1px #000;
            } 
            
        </style>
    </head>
    <body>
        <%
            String ID = (String)session.getAttribute("ID");
        %>
        <ul>
            <li><a class="active" href="mainPage.jsp">��ҳ</a></li>
            <li><a href="index.jsp">�˳���½</a></li>
            <%
                if (ID.equals("000000")) {
            %>
                <li><a href="addMoviePage.jsp">��ӵ�Ӱ</a></li>
                <li><a href="#me">Admin</a></li>
            <%
                } else {
            %>
                <li><a href="meMainPage.jsp"><%= session.getAttribute("userName") %></a></li>
            <%
                }
            %>
        </ul>
        <div style="padding:20px;margin-top:30px;height:1500px;">
            <h1></h1>
            <form action="SearchResultPage.jsp" method="post">
                <select class="select" name="choice">
                    <option value="title">��Ӱ����</option>
                    <option value="director">����</option>
                    <option value="actors">�������</option>
                </select>
                <input type="text" name="word">
                <input type="submit" name="submit" value="����">
            </form>

    </body>
</html>
