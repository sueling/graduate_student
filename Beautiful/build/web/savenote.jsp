<%-- 
    Document   : savenote
    Created on : 2015/9/5, 下午 06:08:02
    Author     : jill
--%>

<%@page contentType="text/html; charset=big5" %>
<%@page import="java.io.*"%>
<html>
<%
Class.forName("org.gjt.mm.mysql.Driver");
java.sql.Connection connection = 
java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
String query = "INSERT INTO suggestion VALUES (?)";
java.sql.PreparedStatement statement = connection.prepareStatement(query);
statement.setAsciiStream(1,new ByteArrayInputStream(
           (request.getParameter("suggestion")).getBytes("Big5")),
           (request.getParameter("suggestion")).getBytes("Big5").length );
statement.executeUpdate();
connection.close();
%>
您的資料我們已為您建檔<br>
<hr>
<a href="7-4.jsp" >回留言列表</a>
</html>