<%-- 
    Document   : addtitle
    Created on : 2015/9/30, 下午 08:41:32
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
            String sql = "SELECT * FROM suggestion"; 
            String sql2 = "SELECT * FROM suggestion_title WHERE suggestion_title.te_id = '"+id+"'";
            String sql3 = "SELECT MAX(id) as maxid FROM suggestion_title WHERE suggestion_title.st_id = '"+str+"' AND suggestion_title.te_id = '"+id+"'"; 
            PreparedStatement smt3 = con.prepareStatement(sql3);
           ResultSet rs3 = smt3.executeQuery();
           rs3.next();
           String max = rs3.getString(1);
            PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs2 = smt2.executeQuery();
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
           rs.last();
           rs2.last();

           
        request.setCharacterEncoding("UTF-8");
        String suggestion=request.getParameter("suggestion");
        String te_id=(String)session.getAttribute("user_id");
        String title=request.getParameter("title");
        int num2= Integer.parseInt(rs.getString("suggestion_num"));
        num2++;
        int suggestionnum=num2;
        int num= Integer.parseInt(rs2.getString("title_num"));
        num++;
        int titlenum=num;
        int att=1;
        
	 sql = "insert into suggestion (suggestion,title,suggestion_num,te_or_st) values ('"+suggestion+"','"+title+"','"+suggestionnum+"','"+att+"')";
        sql2 = "insert into suggestion_title (te_id,st_id,title,title_num,id) values ('"+te_id+"','"+str+"','"+title+"','"+titlenum+"','"+max+"')";
            int result2 = smt2.executeUpdate(sql2); 
            int result = smt.executeUpdate(sql); 
            if(request.getParameter("title")!=null){
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle1.jsp?name="+str+"");
            }
            smt.close();
            smt2.close();
            con.close();
          %>
    </body>
</html>
 
