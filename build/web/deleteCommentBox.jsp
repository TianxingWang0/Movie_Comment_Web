<%-- 
    Document   : deleteCommentBox
    Created on : 2018-5-28, 18:14:39
    Author     : 28347
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function bcancel() {
                window.close();
            }
        </script>
    </head>
    <body bgcolor=#66CD00>
        <%
            String commentID = request.getParameter("commentID");
        %>
        <font size=5>确认删除评论？</font>
        <form method="post" action="deleteCommentMessage.jsp?&commentID=<%=commentID%>">
            <input name="comment" type="hidden">
                <input type="submit" name="Submit" value="确定">
                <input type=button name=inputboxbs value=取消 onclick="bcancel();">
        </form>
    </body>
</html>
