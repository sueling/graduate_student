<%-- 
    Document   : test4
    Created on : 2015/9/30, 上午 08:48:55
    Author     : jill
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>b_s_projects_action</title>
    </head>
    <body>  
  <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT suggestion.title,suggestion.suggestion FROM suggestion";
            String sql2 = "SELECT suggestion.suggestion_num FROM suggestion";
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            rs.next();
            rs2.last();

           
        request.setCharacterEncoding("UTF-8");
        String suggestion=request.getParameter("suggestion");
        String title=str;
        int num = Integer.parseInt(rs2.getString("suggestion_num"));
        num++;
        int titlenum=num;
        int att=1;
        
	if(suggestion!=null){
	sql = "insert into suggestion (title,suggestion,suggestion_num,te_or_st) values ('"+title+"','"+suggestion+"','"+titlenum+"','"+att+"')";
        
        int result = smt.executeUpdate(sql); 
        response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle.jsp?name="+title+"");
            
            }    
            smt.close();
            con.close();
          %>
    </body>
    </html>
