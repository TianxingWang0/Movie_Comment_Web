<%-- 
    Document   : addCommentBox
    Created on : 2018-5-28, 13:57:44
    Author     : 28347
--%>

<%@page contentType="text/html" pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>JSP Page</title>
        <script language="javascript">
            function bcancel() {
                window.close();
            }
        </script>
    </head>
    <body bgcolor=#66CD00>
        <%
            String movieId = request.getParameter("movieId");
            String ID = request.getParameter("ID");
        %>
        <label for="name">������Ӱ����</label>
        <form method="post" action="addCommentMessage.jsp?&movieId=<%=movieId%>&ID=<%=ID%>">
            <textarea name="comment" cols="30" rows="3" size="35"></textarea><p>
                <input type="submit" name="Submit" value="�ύ">
                <input type=button name=inputboxbs value=ȡ�� onclick="bcancel();">
        </form>

    </body>
</html>
