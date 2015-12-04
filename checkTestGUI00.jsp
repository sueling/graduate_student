<%-- 
    Document   : checkTestGUI00
    Created on : 2015/11/11, 上午 11:08:26
    Author     : Ginny
--%>





<!DOCTYPE html>
<%@page language="java" 
contentType="text/html; charset=UTF-8"
import = "java.sql.*,java.util.*" 
import ="mybean.CheckboxBean,myutil.MyUtil"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>研究生學程計畫</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
 <%= session.getAttribute("user_id")%>  
 <jsp:useBean id="checkboxBean"
 scope="page"
 class="mybean.CheckboxBean"/>
 <jsp:setProperty name="checkboxBean"
 property="te_name" param="checkbox" />
  

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">研究生學程計畫</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="d_changepassword.jsp" class="btn btn-danger square-btn-adjust">修改密碼</a><a href="d_login.jsp" class="btn btn-danger square-btn-adjust">登出</a></div>
        </nav>   
 

         <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
                    <li><a   href="d_newest.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
                    <li><a   href="d_rule.jsp"><i class="fa fa-book fa-3x"></i> 學程相關規定</a></li>
                    <li>
                        <a  href="#"><i class="fa fa-file-archive-o fa-3x"></i> 指導教授同意書</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="a_s_choose.jsp"><i class="fa fa-plus fa-2x"></i> 選擇指導教授</a></li>
                                <li><a  href="a_t_choose.jsp"><i class="fa fa-plus fa-2x"></i> 查看指導教授同意書</a></li>
                                <li><a  href="a_c_choose.jsp"><i class="fa fa-plus fa-2x"></i> 檢視指導教授同意書</a></li>
                                <li><a  href="a_a_choose.jsp"><i class="fa fa-plus fa-2x"></i> 統整指導教授同意書</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_s_projects.jsp"><i class="fa fa-plus fa-2x"></i>上傳論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_t_projects_saw.jsp"><i class="fa fa-plus fa-2x"></i>審查論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_c_distribute.jsp"><i class="fa fa-plus fa-2x"></i>分派審查論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_a_projects_list.jsp"><i class="fa fa-plus fa-2x"></i>論文計畫書審查名冊</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>師生審查意見往返</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 老師意見回覆</a></li>
                                <li><a  href="b_s_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 學生意見回覆</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>論文計畫書審查結果</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_result.jsp"><i class="fa fa-plus fa-2x"></i> 查詢審查結果</a></li>
                                <li><a  href="b_a_finalall.jsp"><i class="fa fa-plus fa-2x"></i> 審查成績冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>論文計劃書口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 申請口試</a></li>
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 查看口試申請書</a></li>
                                <li><a  href="b_a_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 口試名冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>論文加分</a>
                        <ul class="nav nav-second-level">
                            <li><a href="c_s_add_point.jsp"><i class="fa fa-plus fa-2x"></i> 加分</a></li>
                            <li><a href="c_t_person.jsp"><i class="fa fa-plus fa-2x"></i> 加分審核</a></li>
                            <li><a href="c_s_add_end.jsp"><i class="fa fa-plus fa-2x"></i> 加分結果表</a></li> </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>學位考試</a>
                            <ul class="nav nav-second-level">
                            <li><a href="c_s_oral1.jsp"><i class="fa fa-plus fa-2x"></i> 學位考試</a></li>
                                        <li><a href="c_t_recommend.jsp"><i class="fa fa-plus fa-2x"></i> 指導教授推薦書</a></li>
                                        <li><a href="c_t_oral_time.jsp"><i class="fa fa-plus fa-2x"></i>口試時程表</a></li>
                                        
                                        <li><a href="c_a_oral_end.jsp"><i class="fa fa-plus fa-2x"></i> 口試申請匯總表</a></li>
                                        
                                        <li><a href="c_a_oral4_end.jsp"><i class="fa fa-plus fa-2x"></i>論文題要匯總表</a></li>
                                        <li><a href="c_a_oral2_end.jsp"><i class="fa fa-plus fa-2x"></i>論文考試申請匯總表</a></li>
                                    </ul>
                    </li>        
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>口試及離校程序</a>
                            <ul class="nav nav-second-level" >
                                <li><a href="c_t_vote.jsp"><i class="fa fa-plus fa-2x"></i>學位論文考試投票單</a></li>
                                <li>   <a href="c_a_vote_end.jsp"><i class="fa fa-plus fa-2x"></i>投票結果表</a></li>
                            </ul>
                    </li> 
                </ul>   
            </div>
        </nav>         
      <div id="page-wrapper" >
            <ul class="breadcrumb">
            <li><a href="d_a_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書</li>
            <li><a href="checkTestGUI1.jsp">分派審查論文計畫書</a> <span class="divider"></span></li>
            </ul>   
        
 
 <%
       Class.forName("com.mysql.jdbc.Driver");
      Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","ginny");       
 String[] te_name=request.getParameterValues("checkbox");
Statement stmt  = con.createStatement(); 
   String sql = "select * from teacher"; 
	          // ResultSet rs =stmt.executeQuery(sql); 
 
 
  String userId=(String)session.getAttribute("user_id");
     String sql2 = "select * from  choose_teacher WHERE choose_teacher.st_id = '"+userId+"'";              
 out.println("<UL>");
 String str = new String();
 
 boolean same=true; 
 
 for(int z=0;z<te_name.length;z++){
     ResultSet rs3 =stmt.executeQuery(sql2); 
        while(rs3.next()){
            String name1 = rs3.getString("advisor_pro");
            String name2 = rs3.getString("common_pro1");
            String name3 = rs3.getString("common_pro2");
            if(MyUtil.big5ToUnicode(te_name[z]).equals(name1)){
                out.println("你重複選擇"+name1);
                same=false;
            }
             if(MyUtil.big5ToUnicode(te_name[z]).equals(name2)){
                out.println("你重複選擇"+name2);
                same=false;
            }
              if(MyUtil.big5ToUnicode(te_name[z]).equals(name3)){
                out.println("你重複選擇"+name3);
                same=false;
            }
        }
    }
 
 
 
 
  
   
   
   
   
 
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
 if(same=false){
response.sendRedirect("testGGUI.jsp");
 }
else{
out.println("您選擇老師符合資格"+"<BR>");
 
 
 
 
  out.println("<Ll>您分派審查老師:<BR>");
 }
 if(te_name!=null){
	 for(int i=0;i<te_name.length;i++){
		
		 out.println(MyUtil.big5ToUnicode(te_name[i]));
                 
                   ResultSet rs =stmt.executeQuery(sql); 
	       while(rs.next()){
                   String name = rs.getString("te_name");
                   String tId=rs.getString("te_id");
                   if(tId.equals(te_name[i])){
                       out.println(name+"<BR>");
                   }
               }
                 
                 
                  
            
                 String teName=MyUtil.big5ToUnicode(te_name[i]);
                 
                  Statement st=con.createStatement();
                  int x=st.executeUpdate("insert into distribute(st_id,te_id,score) values('"+teName+"','"+teName+"','"+0+"')");

       
        
	 }
	 
 }else{
	 out.println("您沒有選項");
 }
 out.println("</UL><BR>");
 %>
  <%
       
        con.close();
        %> 
 
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
