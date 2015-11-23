<%-- 
    Document   : savenote1
    Created on : 2015/9/11, ?? 09:27:56
    Author     : jill
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
  
  <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            Statement smt=con.createStatement();
            ResultSet rs;
            String sql = "SELECT suggestion.title,suggestion.suggestion FROM suggestion";
           
        request.setCharacterEncoding("UTF-8");
        String title=request.getParameter("title");
	String suggestion=request.getParameter("suggestion");
	
	
	sql = "insert into suggestion (title,suggestion) values ('"+title+"','"+suggestion+"')";
            int result = smt.executeUpdate(sql); 
            if(request.getParameter("suggestion")!=null){
                response.sendRedirect("http://localhost:8080/beautiful/7-5.jsp");
            }
            smt.close();
            con.close();
          %>

