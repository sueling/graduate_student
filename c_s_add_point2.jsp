<%-- 
    Document   : add_point2.jsp
    Created on : 2014/12/20, 下午 11:33:33
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add_point2</title>
    </head>
    <body>
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student?useUnicode=true&characterEncoding=utf-8","root","1234");
            Statement smt = con.createStatement();
            
            request.setCharacterEncoding("UTF-8");
            String po_name = request.getParameter("po_name");
            String publish = request.getParameter("publish");
            String member = request.getParameter("member");
            String examine = request.getParameter("examine");
            String number = request.getParameter("number");
            String score = request.getParameter("score");
            
            String sql = "insert into add_point (po_name,publish,member,examine,number,score) values ('"+po_name+"','"+publish+"','"+member+"','"+examine+"','"+number+"','"+score+"')";
            int result = smt.executeUpdate(sql);
            if(request.getParameter("po_name")!=null){
                response.sendRedirect("http://localhost:8080/stupid/student/c_s_add_point.jsp");
            }
            smt.close();
            con.close();
        %>    
    </body>
</html>
