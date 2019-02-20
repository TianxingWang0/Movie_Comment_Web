<%-- 
    Document   : register
    Created on : 2018-5-25, 19:35:58
    Author     : 28347
--%>

<%@page contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="gb2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>注册</title>

        <!-- Bootstrap core CSS -->
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="./signin.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <form action="message.jsp" class="form-signin">
                <h2 class="form-signin-heading" align="center" >注册</h2>
                <label for="inputName" class="sr-only">用户名</label>
                <input type="text" id="inputEmail" name="userName" class="form-control" placeholder="用户名" required autofocus>
                <label for="inputEmail" class="sr-only">邮箱地址</label>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="邮箱地址" required autofocus>
                <label for="inputPassword" class="sr-only">密码</label>
                <input type="password" name="userPwd" id="inputPassword" class="form-control" placeholder="密码" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="confirmPwd" id="inputPassword" class="form-control" placeholder="确认密码" required>
                <button class="btn btn-lg btn-primary btn-block" name="Submit" type="submit">注册</button>
            </form>
        </div>
    </body>
</html>
