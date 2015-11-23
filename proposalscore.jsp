<%-- 
    Document   : proposalscore
    Created on : 2015/11/23, 上午 10:18:28
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
            str = request.getParameter("name1");
            String sql = "SELECT * FROM distribute where distribute.te_id = '"+id+"' AND distribute.st_id = '"+str+"'";
            String sql2 = "SELECT over FROM distribute where distribute.te_id = '"+id+"' AND distribute.st_id = '"+str+"'";
            String sql3 = "SELECT max(id) as max from distribute";
            String sql4 = "SELECT * from suggestion_title where suggestion_title.te_id = '"+id+"' AND suggestion_title.st_id = '"+str+"'";
            PreparedStatement smt3 = con.prepareStatement(sql3);
            ResultSet rs3 = smt3.executeQuery();
            rs3.next();
            int max = Integer.parseInt(rs3.getString(1));
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            rs2.next();
             PreparedStatement smt4 = con.prepareStatement(sql4);
            ResultSet rs4 = smt4.executeQuery();
            rs4.next();
            
            request.setCharacterEncoding("UTF-8");
            String st_id = str;
            int pass = Integer.valueOf(request.getParameter("passornot"));
            int att=0;
            int attforfun=1;
            max++;
            int finalmax=max;
            
            
            sql = "UPDATE distribute SET score = '"+pass+"' WHERE distribute.st_id = '"+str+"' AND distribute.te_id = '"+id+"' AND distribute.over = '"+att+"'";
            int result = smt.executeUpdate(sql);
            if(pass==2){
            sql3 = "insert into distribute (st_id,te_id,id) values ('"+str+"','"+id+"','"+finalmax+"')";
            sql2 = "UPDATE distribute SET over = '"+attforfun+"' WHERE distribute.st_id = '"+str+"' AND distribute.te_id = '"+id+"' AND distribute.over = '"+att+"'";
            int result2 = smt2.executeUpdate(sql2);
            int result3 = smt3.executeUpdate(sql3);
            }
            if(pass==3){
            sql4 = "UPDATE suggestion_title SET besaw = '"+att+"' WHERE suggestion_title.st_id = '"+str+"' AND suggestion_title.te_id = '"+id+"'";
            sql2 = "UPDATE distribute SET over = '"+attforfun+"' WHERE distribute.st_id = '"+str+"' AND distribute.te_id = '"+id+"' AND distribute.over = '"+att+"'";
            int result4 = smt4.executeUpdate(sql4);
            int result2 = smt2.executeUpdate(sql2);
            }
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_projects_saw.jsp");
            smt.close();
            smt2.close();
            smt3.close();
            smt4.close();
            con.close();
        %>    
    </body>
</html>
