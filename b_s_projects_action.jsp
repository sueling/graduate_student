<%-- 
    Document   : add_point2.jsp
    Created on : 2014/12/20, 下午 11:33:33
    Author     : lin
--%>

﻿<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>b_s_projects_action</title>
    </head>
    <body>
        
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            Statement smt = con.createStatement();
            Statement smt3 = con.createStatement();
            String id = (String)session.getAttribute("user_id");
            
            request.setCharacterEncoding("UTF-8");
            String pro_name_chinese = request.getParameter("pro_name_chinese");
            String pro_name_english = request.getParameter("pro_name_english");
            int i=0;
            
            String sql = "insert into proposal (pro_name_chinese,pro_name_english) values ('"+pro_name_chinese+"','"+pro_name_english+"')";
            int result = smt.executeUpdate(sql); 
            String sql2 = "SELECT * FROM distribute where distribute.st_id = '"+id+"'";
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            rs2.next();
            int score = Integer.parseInt(rs2.getString("score"));
            int over = Integer.parseInt(rs2.getString("over"));
            if(score==0&&over==1){
                String sql3 = "UPDATE distribute SET over = '"+i+"' WHERE distribute.st_id = '"+id+"'"; 
                int result3 = smt3.executeUpdate(sql3); 
            }
            
            if(request.getParameter("pro_name_chinese")!=null){
                response.sendRedirect("http://localhost:8080/Bootshaha/student/b_s_projects.jsp");
            }
            smt.close();
            smt3.close();
            con.close();
        %>    
    </body>
</html>
