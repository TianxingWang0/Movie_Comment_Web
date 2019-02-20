<%-- 
    Document   : SearchResultPage
    Created on : 2018-5-26, 8:55:21
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>搜索结果</title>
        <style>
            body {margin:0;}

            uli {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }

            la {
                float: left;
            }

            la a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            la a:hover:not(.active) {
                background-color: #111;
            }

            .active {
                background-color: #4CAF50;
            }

            .grid_view {
                border-top: 1px dashed #ccc;
                padding-left: 0;
            }

            .grid_view li {
                overflow: hidden;
                list-style: none;
                border-bottom: 1px dashed #ccc;
                padding: 12px 0;
            }

            body, div, dl, dt, dd, ul, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, button, textarea, blockquote {
                margin: 0;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                margin-left: 0px;
                padding: 0;
                padding-top: 0px;
                padding-right: 0px;
                padding-bottom: 0px;
                padding-left: 0px;
            }

            .grid_view .pic {
                color: #bbb;
                float: left;
                padding-right: 25px;
            }

            .grid_view .info {
                overflow: hidden;
                overflow-x: hidden;
                overflow-y: hidden;
                zoom: 1;
            }

            .grid_view .pic em {
                float: left;
                padding: 0 10px;
                padding-top: 0px;
                padding-right: 10px;
                padding-bottom: 0px;
                padding-left: 10px;
            }


        </style>
    </head>
    <body>
        <%
            String ID = (String) session.getAttribute("ID");
        %>
    <uli>
        <la><a href="mainPage.jsp">主页</a></la>
        <la><a href="index.jsp">退出登陆</a></la>
            <%
                if (ID.equals("000000")) {
            %>
        <la><a href="addMoviePage.jsp">添加电影</a></la>
        <la><a href="#me">Admin</a></la>
            <%
            } else {
            %>
        <la><a href="meMainPage.jsp"><%= session.getAttribute("userName")%></a></la>
            <%
                }
            %>
    </uli>
    <div style="padding:20px;margin-top:30px;height:1500px;">
        <h1>搜索结果</h1>
        <%
            response.setContentType("text/html;charset=gb2312");
            request.setCharacterEncoding("gb2312");
            String choice = request.getParameter("choice");
            String word = request.getParameter("word");
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql;
            sql = "select * from movie where " + choice + " like \"%" + word + "%\"";
            ResultSet rs = stmt.executeQuery(sql);
            int i = 0;
            if (!rs.next()) {
                //not found %>
        <p>没有找到相关内容</p>    
        <%  } else {        
            //found one or more matched result %>
        <ol class="grid_view">
            <%              
                do {
                    String title = rs.getString("title");
                    String director = rs.getString("director");
                    String imgUrl = rs.getString("imgUrl");
                    String actors = rs.getString("actors");
                    String type = rs.getString("type");
                    int year = rs.getInt("year");
                    String movieId = Integer.toString(rs.getInt("movieId"));
                    i += 1;
            %>
            <li>
                <div class="item">
                    <div class="pic">
                        <em class=""><%=i%></em>
                        <a href="moviePage.jsp?movieId=<%=movieId%>">
                            <img width="100" src="<%=imgUrl%>" class="">
                        </a>
                    </div>
                    <div class="info">
                        <div class="hd">
                            <a href="moviePage.jsp?movieId=<%=movieId%>" class="">
                                <span class="title"><%=title%></span>
                            </a>
                        </div>
                        <div class="bd">
                            <p class="">
                                导演: <%out.println(director);%>&nbsp;&nbsp;&nbsp;<br>
                                年份：<%=year%>&nbsp;&nbsp; 类型：<%=type%><br>
                                主演：<%=actors%>
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <%  } while (rs.next());    %>
        </ol>
        <%  }
            rs.close();
            stmt.close();
            conn.close();
        %>
    </div>
</body>
</html>
