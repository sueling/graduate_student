<%-- 
    Document   : test4
    Created on : 2015/9/30, 上午 08:48:55
    Author     : jill
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
  
  <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            
            String sql = "SELECT suggestion.te_id,suggestion.st_name,suggestion.title,suggestion.titlenum FROM suggestion"; //st_name暫時不能存 因為資料表沒有st_name
            String sql2 = "SELECT suggestion.suggestion,suggestion.time FROM suggestion";
            PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs2 = smt2.executeQuery();
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();

           
        request.setCharacterEncoding("UTF-8");
        String suggestion=request.getParameter("suggestion");
        String te_id=request.getParameter("te_id");
        String st_name=request.getParameter("st_name");
        String title=request.getParameter("title");
        int titlenum;
        int num=1;
        num=num++;
        
	if(suggestion!=null){
	sql = "insert into suggestion (te_id,st_name,title,suggestion,titlenum) values ('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+suggestion+"','"+((num))+"')";
        
        int result = smt.executeUpdate(sql); 
        response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle.jsp");
            
            }    
            smt.close();
            con.close();
          %>