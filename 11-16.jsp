<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import = "java.sql.*" %>
<html>
<%
 Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","ginny");;
String query = "DELETE FROM new_issues WHERE ID=?";
java.sql.PreparedStatement statement = con.prepareStatement(query);
statement.setInt(1,Integer.parseInt(request.getParameter("ID")));
statement.executeUpdate();
con.close();
%>
<font size="5" color="#003366"><b>delete successful</b></font> 
<hr><a href="firstPageDelete.jsp">back to data list</a>
</html>
