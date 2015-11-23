  ﻿<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
  
  <%
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            Statement smt=con.createStatement();
            ResultSet rs;
            String sql;
           
        request.setCharacterEncoding("UTF-8");
	String st_name,first_name,last_name,st_id,st_password,sex,capacity,payment,grade,office_tellphone,mobile_phone,mail,suspension;
	st_name=request.getParameter("st_name");
	first_name=request.getParameter("first_name");
	last_name=request.getParameter("last_name");
	st_id=request.getParameter("st_id");
	st_password=request.getParameter("st_password");
	st_password=request.getParameter("st_password");
	sex=request.getParameter("sex");
	capacity=request.getParameter("capacity");
	payment=request.getParameter("payment");
	grade=request.getParameter("grade");
	office_tellphone=request.getParameter("office_tellphone");
	mobile_phone=request.getParameter("mobile_phone");
	mail=request.getParameter("mail");
	suspension=request.getParameter("suspension");
	
	if(st_name.length()==0||first_name.length()==0||last_name.length()==0||st_id.length()==0||st_password.length()==0||sex.length()==0||capacity.length()==0||payment.length()==0||grade.length()==0||office_tellphone.length()==0|mobile_phone.length()==0||mail.length()==0||suspension.length()==0)
	{
		out.println("<center><font color=red size=6>輸入欄位不可為空白</font>");
		out.println("<a href=d_registeration.jsp>回上一頁</a>");
	}	
	else
	{
		sql="insert into student set st_name='"+st_name+"',first_name='"+first_name+"',last_name='"+last_name+"',st_id='"+st_id+"',st_password='"+st_password+"',sex='"+sex+"',capacity='"+capacity+"',payment='"+payment+"',grade='"+grade+"',office_tellphone='"+office_tellphone+"',mobile_phone='"+mobile_phone+"',mail='"+mail+"',suspension='"+suspension+"'";
		
               
                smt.execute(sql);
		response.sendRedirect("d_index.jsp");
	}
%>
 
	 <%
            con.close();
          %>