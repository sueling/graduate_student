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
            
            request.setCharacterEncoding("UTF-8");
            String pro_name_chinese = request.getParameter("pro_name_chinese");
            String pro_name_english = request.getParameter("pro_name_english");
            
            String sql = "insert into proposal (pro_name_chinese,pro_name_english) values ('"+pro_name_chinese+"','"+pro_name_english+"')";
            int result = smt.executeUpdate(sql);
            if(request.getParameter("pro_name_chinese")!=null){
                response.sendRedirect("http://localhost:8080/Bootshaha/student/b_s_projects.jsp");
            }
            smt.close();
            con.close();
        %>    
    </body>
</html>
