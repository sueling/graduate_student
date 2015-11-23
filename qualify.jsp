<%-- 
    Document   : qualify
    Created on : 2015/5/25, 下午 02:26:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
    Statement stmt = con.createStatement();
    String sql ;
    ResultSet rs; 
  //  = stmt.executeQuery(sql);
    
    request.setCharacterEncoding("UTF-8");
    String id,pwd,role;
    id=request.getParameter("id");
    pwd=request.getParameter("pwd");
    role=request.getParameter("role");
    byte flag = -1;
    sql= "select role from user where id ='"+id+"',pwd='"+pwd+"',role='"+role+"'";
    rs= stmt.executeQuery(sql);
    while(rs.next()){
        flag = rs.getByte(1);
    }
    rs.close();
    stmt.close();
    con.close();

    if(flag == 0){
        response.sendRedirect("d_ad_index.jsp");//管理者頁面
    }else if (flag == 1){
        response.sendRedirect("d_s_indes.jsp");//學生頁面
    }else if(flag==2){
        response.sendRedirect("d_t_indes.jsp");//老師頁面
    }else if(flag==3){
        response.sendRedirect("d_a_index.jsp");//助教頁面
    }else if(flag==4){
        response.sendRedirect("d_c_index.jsp");//學術委員
    }else{
        //登入失敗;
    }
    
%>

<%
   con.close();
 %>