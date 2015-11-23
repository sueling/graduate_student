
<%-- 
    Document   : d_logout
    Created on : 2015/5/19, 下午 08:09:48
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登出</title>
    </head>
        <%
            session.invalidate();
            response.sendRedirect("d_login.jsp");
        %>
    
</html>
