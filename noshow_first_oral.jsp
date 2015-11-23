<%-- 
    Document   : noshow_first_oral
    Created on : 2015/11/23, 下午 04:44:16
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
            String sql = "SELECT * FROM firstoral_test WHERE firstoral_test.st_id = '"+str+"'";
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();
           
        request.setCharacterEncoding("UTF-8");
        int besaw = Integer.parseInt(rs.getString("besaw"));
        
	sql = "UPDATE firstoral_test SET besaw='0' WHERE firstoral_test.st_id = '"+str+"'";
        
            int result = smt.executeUpdate(sql); 
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_accept_oral.jsp");
        
            smt.close();
            con.close();
          %>
