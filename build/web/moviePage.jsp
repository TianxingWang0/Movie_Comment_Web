<%-- 
    Document   : moviePage
    Created on : 2018-5-25, 20:04:49
    Author     : 28347
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>详情</title>
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

            #comments-section {
                margin-bottom: 30px;
            }

            #comments-section .mod-hd {
                margin-top: 16px;
                overflow: hidden;
                overflow-x: hidden;
                overflow-y: hidden;
            }

            #content .comment_btn {
                color: #C65E24;
                background-color: rgba(198,94,36,0.15);
                height: auto;
                padding: 7px 12px;
                padding-top: 7px;
                padding-right: 12px;
                padding-bottom: 7px;
                padding-left: 12px;
                line-height: 13px;
                float: right;
            }

            .comment_btn {
                display: inline-block;
                height: auto;
                color: #ca6445;
                background: #fae9da;
                background-image: initial;
                background-position-x: initial;
                background-position-y: initial;
                background-size: initial;
                background-attachment: initial;
                background-origin: initial;
                background-clip: initial;
                background-color: rgb(250, 233, 218);
                border-radius: 2px;
                border-top-left-radius: 2px;
                border-top-right-radius: 2px;
                border-bottom-right-radius: 2px;
                border-bottom-left-radius: 2px;
                float: right;
                line-height: 13px;
                padding: 7px 12px;
                padding-top: 7px;
                padding-right: 12px;
                padding-bottom: 7px;
                padding-left: 12px;
            }

            #comments-section .mod-hd h2 {
                margin-top: 0;
            }

            .pl {
                font: 12px Arial, Helvetica, sans-serif;
                font-style: normal;
                font-variant-ligatures: normal;
                font-variant-caps: normal;
                font-variant-numeric: normal;
                font-variant-east-asian: normal;
                font-weight: normal;
                font-stretch: normal;
                font-size: 12px;
                line-height: 150%;
                font-family: Arial, Helvetica, sans-serif;
                line-height: 150%;
                color: #666666;
            }

            .comment-item {
                margin-bottom: 16px;
                font-size: 12px;
            }

            div.comment-item {
                position: relative;
                margin: 0;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                margin-left: 0px;
                padding: 20px 0 25px;
                padding-top: 20px;
                padding-right: 0px;
                padding-bottom: 25px;
                padding-left: 0px;
                overflow: hidden;
                overflow-x: hidden;
                overflow-y: hidden;
                font-size: 13px;
            }

            html h2 {
                font-size: 16px;
            }

            h1, h2, h3, h4, h5, h6 {
                font-size: 100%;
                font-weight: normal;
            }

            h2 {
                font: 15px Arial, Helvetica, sans-serif;
                font-style: normal;
                font-variant-ligatures: normal;
                font-variant-caps: normal;
                font-variant-numeric: normal;
                font-variant-east-asian: normal;
                font-weight: normal;
                font-stretch: normal;
                font-size: 15px;
                line-height: 150%;
                font-family: Arial, Helvetica, sans-serif;
                color: #072;
                margin: 0 0 12px 0;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 12px;
                margin-left: 0px;
                line-height: 150%;
            }

            h3 {
                margin-left: 4px;
                font: 14px Arial, Helvetica, sans-serif;
                font-style: normal;
                font-variant-ligatures: normal;
                font-variant-caps: normal;
                font-variant-numeric: normal;
                font-variant-east-asian: normal;
                font-weight: normal;
                font-stretch: normal;
                font-size: 14px;
                line-height: 1.8;
                font-family: Arial, Helvetica, sans-serif;
                color: #666666;
                margin-bottom: 1px;
                line-height: 1.8;
                background-color: #f2fbf2;
            }

            .comment-item h3 {
                margin: 1.5em 0 1em 0;
                margin-top: 1.5em;
                margin-right: 0px;
                margin-bottom: 1em;
                margin-left: 0px;
                height: 1.7em;
                line-height: 1.7em;
                padding-left: 4px;
            }

            div.comment-item {
                margin-bottom: 1em;
                word-break: break-word;
            }

            div.comment-item .comment {
                overflow: hidden;
                overflow-x: hidden;
                overflow-y: hidden;
                line-height: 1.5;
                color: #494949;
                word-wrap: break-word;
                border-bottom: 1px dashed #ccc;
            }

            div.comment-item .comment-vote {
                float: right;
            }

        </style>
    </head>
    <body>
        <%
            String ID = (String)session.getAttribute("ID");
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
        <%
            String movieId = request.getParameter("movieId");
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/db_pj", "root", "wang");
            stmt = conn.createStatement();
            String sql;
            sql = "select * from movie natural left outer join comment natural left outer join user where movieId = " + movieId;
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            String title = rs.getString("title");
            String director = rs.getString("director");
            String imgUrl = rs.getString("imgUrl");
            String type = rs.getString("type");
            String actors = rs.getString("actors");
            int year = rs.getInt("year");
            int count = 0;
        %>
        <ol class="grid_view">
            <li>
                <div class="item">
                    <div class="pic">
                        <a>
                            <img width="100" src="<%=imgUrl%>" class="">
                        </a>
                    </div>
                    <div class="info">
                        <div class="hd">
                            <a class="">
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
        </ol>
        <script language="javascript">
            function openwindow() {
                window.open("addCommentBox.jsp?&movieId=<%=movieId%>&ID=<%=ID%>", "Sample", "fullscreen=no,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no, copyhistory=no,width=350,height=140,left=200,top=300");
            }
        </script>
        <div id="comments-section">
            <div class="mod-hd">

                <a class="comment_btn j a_show_login" href="javascript:openwindow()" rel="nofollow">
                    <span>我要写短评</span>
                </a>



                <h2>
                    <i class=""><%=title%>的短评</i>
                    ……………………
                    <span class="pl">
                        
                        <a></a>
                         </span>
                </h2>

            </div>
            <div class="mod-bd">
                <%
                    if (rs.getString("name") == null) {     //还没有评论
                %>
                <p>还没有评论哦</p>
                <%
                } else {
                    do {
                        String name = rs.getString("name");
                        String text = rs.getString("text");
                        Timestamp time = rs.getTimestamp("time");
                        String thisCommentUser = rs.getString("ID");
                        String commentID = rs.getString("commentID");
                        count++;
                %>
                <div class="comment-item">
                    <div class="comment">
                        <h3>
                            <span class="comment-vote">
                                <% if (ID.equals(thisCommentUser) || ID.equals("000000")) {        //自己发的评论或者管理员模式显示删除选项
%>
                                <script language="javascript">
                                    function openDeleteWindow() {
                                        var x = document.getElementById("url").value;
                                        window.open(x, "Sample", "fullscreen=no,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no, copyhistory=no,width=350,height=140,left=200,top=300");
                                    }
                                </script> 
                                <input type="hidden" id="url" value="deleteCommentBox.jsp?&commentID=<%=commentID%>"/>
                                <a href="javascript:;" onclick="openDeleteWindow()" class="j a_show_login">删除</a>
                                <%
                                    }
                                %>
                            </span>
                            <span class="comment-info">
                                <a class=""><%=name%></a>
                                <span class="comment-time ">
                                    <%=time%>
                                </span>
                            </span>
                        </h3>
                        <p class=""> <%=text%>
                        </p>
                    </div>
                </div>    
                <%
                        } while (rs.next());
                    }
                    rs.close();
                    stmt.close();
                    conn.close();
                %>
            </div>
        </div>
    </div>
    </body>
</html>
