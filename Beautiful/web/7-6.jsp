<%-- 
    Document   : 7-6
    Created on : 2015/9/7, 下午 03:35:15
    Author     : Ginny
--%>

<%@page contentType="text/html; charset=big5" %>
<%@page import="java.io.* "%>
<html>
<%
Class.forName("org.gjt.mm.mysql.Driver");
java.sql.Connection connection = 
java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","ginny");
String query = "INSERT INTO message (speaker, topic, context) VALUES (?,?,?)";
java.sql.PreparedStatement statement = connection.prepareStatement(query);
statement.setAsciiStream(1, new ByteArrayInputStream(
           (request.getParameter("name")).getBytes("utf")),
           (request.getParameter("name")).getBytes("Big5").length );
statement.setAsciiStream(2, new ByteArrayInputStream(
           (request.getParameter("subject")).getBytes("Big5")),
           (request.getParameter("subject")).getBytes("Big5").length );
statement.setAsciiStream(3, new ByteArrayInputStream(
           (request.getParameter("content")).getBytes("Big5")),
           (request.getParameter("content")).getBytes("Big5").length );
statement.executeUpdate();
connection.close();
%>
您的資料我們已為您建檔<br>
<hr>
<a href="7-4.jsp" >回留言列表</a>
</html>

