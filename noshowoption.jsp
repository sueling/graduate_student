<%-- 
    Document   : noshowoption
    Created on : 2015/10/14, 上午 08:24:14
    Author     : jill
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
  
  <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT * FROM suggestion_title WHERE suggestion_title.title = '"+str+"'";
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();
           
        request.setCharacterEncoding("UTF-8");
        int besaw = Integer.parseInt(rs.getString("besaw"));
        
	sql = "UPDATE suggestion_title SET besaw='0' WHERE title = '"+str+"'";
        
            int result = smt.executeUpdate(sql); 
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle2.jsp?");
        
            smt.close();
            con.close();
          %>

