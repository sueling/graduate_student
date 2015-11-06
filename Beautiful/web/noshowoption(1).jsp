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
            String sql = "SELECT suggestion_title.te_id,suggestion_title.st_id,suggestion_title.title,suggestion_title.title_num,suggestion_title.besaw FROM suggestion_title"; 
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();

           
        request.setCharacterEncoding("UTF-8");
        String te_id=request.getParameter("te_id");
        String st_name=request.getParameter("st_id");
        String title = request.getParameter("title");
        int besaw = Integer.parseInt(rs.getString("besaw"));
        int num= Integer.parseInt(rs.getString("title_num"));
        
	sql = "update suggestion_title set besaw='0' where title='"+rs.getString(3)+"'";
        
            int result = smt.executeUpdate(sql); 
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle1.jsp");
        
            smt.close();
            con.close();
          %>

