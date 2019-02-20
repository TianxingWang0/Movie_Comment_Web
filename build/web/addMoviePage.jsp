<%-- 
    Document   : addMoviePage
    Created on : 2018-5-28, 23:24:38
    Author     : 28347
--%>

<%@page contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>JSP Page</title>
    </head>
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
    <body>
        <ul>
            <li><a href="mainPage.jsp">主页</a></li>
            <li><a href="index.jsp">退出登陆</a></li>
            <li><a class="active" href="addMoviePage.jsp">添加电影</a></li>
            <li><a href="#me">Admin</a></li>
        </ul>
        <div style="padding:20px;margin-top:30px;height:1500px;">
            <form class="form-horizontal" role="form" action="addMovieMessage.jsp" method="post">
                <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">电影名</label>
                    <div class="col-sm-10">
                        <input name="title" type="text" class="form-control" id="firstname"> 
                               
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">海报链接</label>
                    <div class="col-sm-10">
                        <input name="imgUrl" type="text" class="form-control" id="lastname" 
                               >
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">导演</label>
                    <div class="col-sm-10">
                        <input name="director" type="text" class="form-control" id="lastname" 
                               >
                    </div>
                </div>    
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">主要演员</label>
                    <div class="col-sm-10">
                        <input name="actors" type="text" class="form-control" id="lastname" 
                               >
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">上映年份</label>
                    <div class="col-sm-10">
                        <input name="year" type="text" class="form-control" id="lastname" 
                               >
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">类型</label>
                    <div class="col-sm-10">
                        <input name="type" type="text" class="form-control" id="lastname" 
                               >
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
