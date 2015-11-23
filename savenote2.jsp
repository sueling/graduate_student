<%-- 
    Document   : savenote2
    Created on : 2015/9/11, 上午 11:29:43
    Author     : jill
--%>
<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.io.*"%>
<html>
<%
Class.forName("org.gjt.mm.mysql.Driver");
java.sql.Connection connection = 
java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
String query = "INSERT INTO suggestion (title,suggestion) VALUES (?,?)";
java.sql.PreparedStatement statement = connection.prepareStatement(query);
statement.setAsciiStream(1, new ByteArrayInputStream(
           request.getParameter("title").getBytes()),
           (request.getParameter("title")).length());
statement.setAsciiStream(2, new ByteArrayInputStream(
           (request.getParameter("suggestion")).getBytes()),
           (request.getParameter("suggestion")).length());
statement.executeUpdate();
connection.close();
%>
您的資料我們已為您建檔<br>
<hr>
<a href="7-5.jsp" >回留言列表</a>
</html>

