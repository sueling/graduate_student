<%-- 
    Document   : c_s_oral_delete
    Created on : 2015/4/3, 下午 05:24:09
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
            String sql = "select * from oral_decision where oral_name='"+request.getParameter("oral_name")+"'";
            ResultSet rs = smt.executeQuery(sql);
            if(!rs.next()){
                out.println("找不到資料!");
            }
            else{
                String sql1 = "delete from oral_decision where oral_name = '"+rs.getString("oral_name")+"'";
                int result = smt.executeUpdate(sql1);
            }
            response.sendRedirect("http://localhost:8080/stupid/student/c_s_oral1.jsp");
        %>    
    </body>
</html>
