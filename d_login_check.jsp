<%-- 
    Document   : login_check
    Created on : 2014/11/29, 下午 11:04:55
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            Statement smt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            // 我們自訂 Session 的屬性名稱以及屬性值
            String id = request.getParameter("user_id");
            String pwd = request.getParameter("pwd");
            byte flag=-1;
                
            
            String sql1 = "select role from user where id='"+id+"' and pwd='"+pwd+"'";
            ResultSet rs = smt.executeQuery(sql1);
            if(rs.next()){
                session.setAttribute("user_id",id);
                
                ResultSet rs1 = smt.executeQuery(sql1);
                while(rs1.next()){
                    flag = rs1.getByte(1);
                }    
                if(flag == 0){                                    
                    response.sendRedirect("d_ad_index.jsp");
                }
                else if(flag == 1){
                    response.sendRedirect("d_s_index.jsp");
                }
                else if(flag == 2){
                    response.sendRedirect("d_t_index.jsp");
                }
                else if(flag == 3){
                    response.sendRedirect("d_a_index.jsp");
                }
                else if(flag == 4){
                    response.sendRedirect("d_c_index.jsp");
                }{
                }
            }    
            else{
                out.println("error!<br><a href='d_login.jsp'>Back to login page</a>");
                smt.close();
                con.close();
            }  
       %>    
            
    </body>
</html>
