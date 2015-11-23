<%-- 
    Document   : a_s_choose_v
    Created on : 2015/4/28, 下午 03:31:56
    Author     : user
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
  
  <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");//連結資料庫
        Statement smt=con.createStatement();
        ResultSet rs;
        String sql;
           
        request.setCharacterEncoding("UTF-8");
	String st_id,advisor_pro,common_pro1,common_pro2,ar_name_english,ar_name_chinese;
        st_id=(String)session.getAttribute("user_id");
        advisor_pro=request.getParameter("advisor_pro");
        common_pro1=request.getParameter("common_pro1");
        common_pro2=request.getParameter("common_pro2");
        ar_name_english=request.getParameter("ar_name_english");
        ar_name_chinese=request.getParameter("ar_name_chinese");
	
	if(advisor_pro.length()==0||common_pro1.length()==0)
	{
		out.println("<center><font color=red size=6>輸入欄位不可為空白</font>");
		out.println("<a href=a_s_choose.jsp>回上一頁</a>");
	}	
	else
	{
		sql="insert into choose_teacher set advisor_pro='"+advisor_pro+"',common_pro1='"+common_pro1+"',common_pro2='"+common_pro2+"',st_id='"+st_id+"',ar_name_english='"+ar_name_english+"',ar_name_chinese='"+ar_name_chinese+"'";
		smt.execute(sql);
		response.sendRedirect("a_s_choose1.jsp");
	}
%>
 
	 <%
            con.close();
          %>