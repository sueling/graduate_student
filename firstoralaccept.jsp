<%-- 
    Document   : firstoralaccept
    Created on : 2015/11/23, 下午 03:18:02
    Author     : jill
--%>

<!DOCTYPE html>

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
            String id = (String)session.getAttribute("user_id");
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT * FROM firstoral_test where firstoral_test.te_id = '"+id+"' AND firstoral_test.st_id = '"+str+"'";
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();
            request.setCharacterEncoding("UTF-8");
            String st_id = str;
            int acceptor = Integer.valueOf(request.getParameter("accept"));
            
            
            sql = "UPDATE firstoral_test SET accept = '"+acceptor+"' WHERE firstoral_test.st_id = '"+str+"' AND firstoral_test.te_id = '"+id+"'";
            int result = smt.executeUpdate(sql);
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_firstoral.jsp");
            smt.close();
            con.close();
        %>    
    </body>
</html>
