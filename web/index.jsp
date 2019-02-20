<%-- 
    Document   : index
    Created on : 2018-5-25, 17:11:01
    Author     : 28347
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>登陆</title>

        <!-- Bootstrap core CSS -->
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="./signin.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <form action="CheckLogin.jsp" class="form-signin">
                <h2 class="form-signin-heading" align="center" >请登陆</h2>
                <label for="inputID" class="sr-only">用户ID</label>
                <input type="text" name="ID" id="inputEmail" class="form-control" placeholder="用户ID" required autofocus>
                <label for="inputPassword" class="sr-only">密码</label>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="密码" required>
                <button class="btn btn-lg btn-primary btn-block" name="Submit" type="submit">登陆</button>
            </form>
        </div>
    </body>
</html>
