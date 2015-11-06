<%@page contentType="text/html; charset=big5" %>
<html>
<font size="5" color="#003366"><b>Delete Employee Record</b></font> 
<%
    Class.forName("org.gjt.mm.mysql.Driver");
    java.sql.Connection connection = 
             java.sql.DriverManager.getConnection("jdbc:mysql://localhost/DIYBOOK","","");
    String query = "SELECT * FROM Employee WHERE EmployeeID = ?";
    java.sql.PreparedStatement statement = connection.prepareStatement(query);
    statement.setInt(1,Integer.parseInt(request.getParameter("id")));
    java.sql.ResultSet RS = statement.executeQuery();
    while(RS.next())
	{
%>
<form method="Post" action="11-16.jsp">
    <input type="hidden" name="EmployeeID" 
                       value="<%=RS.getString("EmployeeID") %>">
    <b>姓名:</b><%=RS.getString("Name") %><br>
    <b>密碼:</b><%=RS.getString("Password") %><br>
    <b>職稱:</b><%=RS.getString("Position") %><br>
    <b>部門:</b><%=RS.getString("Department") %><br>
    <b>電話:</b><%=RS.getString("Phone") %><br>
    <b>地址:</b><%=RS.getString("Address") %><br>
    <b>考績:</b><%=RS.getString("Performance") %><br>
    <b>薪資:</b><%=RS.getString("Salary") %><br>
<input type="submit" name="Delete" value="Delete Record">
</form>
<%	} 
RS.close();
connection.close();
%>
</html>