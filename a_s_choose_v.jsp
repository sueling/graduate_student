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
        int num=1;
       
           
        request.setCharacterEncoding("UTF-8");
	String st_id,advisor_pro,common_pro1,common_pro2,ar_name_english,ar_name_chinese;
        st_id=(String)session.getAttribute("user_id");
        advisor_pro=request.getParameter("advisor_pro");
        common_pro1=request.getParameter("common_pro1");
        common_pro2=request.getParameter("common_pro2");
        ar_name_english=request.getParameter("ar_name_english");
        ar_name_chinese=request.getParameter("ar_name_chinese");
	
	if("".equals(advisor_pro)){
            out.println("<center><font color=red size=6>申請老師不可為空白</font>");
            out.println("<a href=a_s_choose.jsp>回上一頁</a>");
	}else if("".equals(common_pro1) && !"".equals(common_pro2)){
            out.print("<center><font color=red size=6>第一位共同指導教授不可為空白</font>");
            out.println("<a href=a_s_choose.jsp>回上一頁</a>");
      
        }else if("".equals(common_pro1) && "".equals(common_pro2)){
            String sql2 = "SELECT COUNT(*) FROM choose_teacher";
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            rs2.next();
            int count = rs2.getInt("COUNT(*)");
            
            if(count!=0){
                String sql1 = "SELECT choose_num FROM choose_teacher WHERE choose_num = (SELECT MAX(choose_num) FROM choose_teacher)";
                PreparedStatement smt1 = con.prepareStatement(sql1);
                ResultSet rs1 = smt1.executeQuery();
                rs1.next();
                num = rs1.getInt("choose_num");
                num = num+1;
            }
            String sql="INSERT INTO choose_teacher SET advisor_pro=(SELECT te_id FROM teacher WHERE te_name='"+advisor_pro+"'),common_pro1=(SELECT te_id FROM teacher WHERE te_name='"+common_pro1+"'),common_pro2=(SELECT te_id FROM teacher WHERE te_name='"+common_pro2+"'),st_id='"+st_id+"',ar_name_english='"+ar_name_english+"',ar_name_chinese='"+ar_name_chinese+"',choose_num='"+num +"'";
            PreparedStatement smt = con.prepareStatement(sql);
            int rs = smt.executeUpdate();
            response.sendRedirect("a_s_choose2.jsp");
            

            smt.close();
            con.close();
        }else if(advisor_pro.equals(common_pro1) || common_pro1.equals(common_pro2) || advisor_pro.equals(common_pro2)){
            out.print("<center><font color=red size=6>不可重複選擇</font>");
            out.println("<a href=a_s_choose.jsp>回上一頁</a>");
        }else 
        {
            //同上上一個statement;
            String sql2 = "SELECT COUNT(*) FROM choose_teacher";
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            rs2.next();
            int count = rs2.getInt("COUNT(*)");
            
            if(count!=0){
                String sql1 = "SELECT choose_num FROM choose_teacher WHERE choose_num = (SELECT MAX(choose_num) FROM choose_teacher)";
                PreparedStatement smt1 = con.prepareStatement(sql1);
                ResultSet rs1 = smt1.executeQuery();
                rs1.next();
                num = rs1.getInt("choose_num");
                num = num+1;
            }
            String sql="INSERT INTO choose_teacher SET advisor_pro=(SELECT te_id FROM teacher WHERE te_name='"+advisor_pro+"'),common_pro1=(SELECT te_id FROM teacher WHERE te_name='"+common_pro1+"'),common_pro2=(SELECT te_id FROM teacher WHERE te_name='"+common_pro2+"'),st_id='"+st_id+"',ar_name_english='"+ar_name_english+"',ar_name_chinese='"+ar_name_chinese+"',choose_num='"+num +"'";
            PreparedStatement smt = con.prepareStatement(sql);
            int rs = smt.executeUpdate();
            response.sendRedirect("a_s_choose2.jsp");
            

            smt.close();
            con.close();
        }

 

           
         %>