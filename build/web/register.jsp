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
        <!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>ע��</title>

        <!-- Bootstrap core CSS -->
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="./signin.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <form action="message.jsp" class="form-signin">
                <h2 class="form-signin-heading" align="center" >ע��</h2>
                <label for="inputName" class="sr-only">�û���</label>
                <input type="text" id="inputEmail" name="userName" class="form-control" placeholder="�û���" required autofocus>
                <label for="inputEmail" class="sr-only">�����ַ</label>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="�����ַ" required autofocus>
                <label for="inputPassword" class="sr-only">����</label>
                <input type="password" name="userPwd" id="inputPassword" class="form-control" placeholder="����" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="confirmPwd" id="inputPassword" class="form-control" placeholder="ȷ������" required>
                <button class="btn btn-lg btn-primary btn-block" name="Submit" type="submit">ע��</button>
            </form>
        </div>
    </body>
</html>
