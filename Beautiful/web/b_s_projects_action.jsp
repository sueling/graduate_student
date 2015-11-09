<%-- 
    Document   : add_point2.jsp
    Created on : 2014/12/20, 下午 11:33:33
    Author     : lin
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="Big5"%>
<%@page import= "java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5">
        <title>b_s_projects_action</title>
    </head>
    <body>
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT proposal.pro_name_chinese,proposal.pro_name_english,proposal.st_id,proposal.pro_num,student.st_id,student.grade FROM proposal,student";
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.last();
            
            request.setCharacterEncoding("Big5");
            String pro_name_chinese = request.getParameter("pro_name_chinese");
            String pro_name_english = request.getParameter("pro_name_english");
            int pro_num= Integer.parseInt(rs.getString("pro_num"));
            pro_num++;
            int pronum=pro_num;
            
            sql = "insert into proposal (pro_name_chinese,pro_name_english,st_id,pro_num) values ('"+pro_name_chinese+"','"+pro_name_english+"','"+id+"','"+(pronum)+"')";
            int result = smt.executeUpdate(sql);
            if(request.getParameter("pro_name_chinese")!=null){
                response.sendRedirect("http://localhost:8080/Beautiful/b_s_projects_upload.jsp");
            }
            smt.close();
            con.close();
        %>    
    </body>
</html>
