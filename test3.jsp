<%-- 
    Document   : test3
    Created on : 2015/9/17, 上午 09:45:29
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
            PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs2 = smt2.executeQuery();
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs2.last();

           
        request.setCharacterEncoding("UTF-8");
        String suggestion=request.getParameter("suggestion");
        String title=str;
        int num= Integer.parseInt(rs2.getString("suggestion_num"));
        num++;
        int titlenum=num;
        int att=0;
        
	
	sql = "insert into suggestion (suggestion,title,suggestion_num,te_or_st) values ('"+suggestion+"','"+str+"','"+titlenum+"','"+att+"')";
            int result = smt.executeUpdate(sql); 
            if(request.getParameter("suggestion")!=null){
                response.sendRedirect("http://localhost:8080/Beautiful/b_s_optioncycle.jsp?name="+str+"");
            }
            smt.close();
            con.close();
          %>
    </body>
    </html>
