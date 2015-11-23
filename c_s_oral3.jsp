<%-- 
    Document   : c_s_oral3
    Created on : 2015/4/3, 下午 04:38:50
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student?useUnicode=true&characterEncoding=utf-8","root","1234");
            Statement smt = con.createStatement();
            
            request.setCharacterEncoding("UTF-8");
            String oral_name = request.getParameter("oral_name");
            
            String sql = "insert into oral_decision (oral_name) values ('"+oral_name+"')";
            int result = smt.executeUpdate(sql);
            if(request.getParameter("oral_name")!=null){
                response.sendRedirect("http://localhost:8080/stupid/student/c_s_oral1.jsp");
            }
            smt.close();
            con.close();
        %>    
    </body>
</html>
