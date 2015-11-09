<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=Big5"> 
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
    <%      Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT student.st_id,student.grade,student.st_name FROM student WHERE student.st_id = '"+id+"'";
            String sql2 = "SELECT proposal.pro_name_chinese,proposal.pro_name_english,proposal.pro_num,proposal.st_id FROM proposal WHERE proposal.st_id = '"+id+"'";
            PreparedStatement smt = con.prepareStatement(sql);
            PreparedStatement smt2 = con.prepareStatement(sql2);
          ResultSet rs = smt.executeQuery();
          ResultSet rs2 = smt2.executeQuery();
          rs.next();
            %>
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
           <!-- /. NAV TOP -->
<nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
                    <li><a   href="d_personal.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
                    <li><a   href="d_rule.jsp"><i class="fa fa-book fa-3x"></i> 學程相關規定</a></li>
                    <li>
                        <a  href="#"><i class="fa fa-file-archive-o fa-3x"></i> 指導教授同意書</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="a_s_choose.jsp"><i class="fa fa-plus fa-2x"></i> 選擇指導教授</a></li>
                            </ul>
                    </li>    
		    <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_s_projects.jsp"><i class="fa fa-plus fa-2x"></i>上傳論文計畫書</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>師生審查意見往返</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_optioncycle1.jsp"><i class="fa fa-plus fa-2x"></i> 學生意見回覆</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>論文計畫書審查結果</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_result.jsp"><i class="fa fa-plus fa-2x"></i> 查詢審查結果</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>論文計劃書口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 申請口試</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>論文加分</a>
                            <ul class="nav nav-second-level">
                                <li><a href="c_s_add_point.jsp"><i class="fa fa-plus fa-2x"></i> 加分</a></li>
                            </ul>    
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>學位考試</a>
                            <ul class="nav nav-second-level">
                                <li><a href="c_s_oral1.jsp"><i class="fa fa-plus fa-2x"></i> 學位考試</a></li>
                            </ul>
                    </li>        
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>口試及離校程序</a>
                            <ul class="nav nav-second-level" >  
                            </ul>
                    </li> 
                </ul>
               
            </div>
            
        </nav>      
<!-- /. NAV SIDE -->
        <div id="page-wrapper" >
             <ul class="breadcrumb">
            <li><a href="d_s_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書/</li>
            <li><a href="b_s_projects.jsp">上傳論文計畫書</a> <span class="divider"></span></li>
            </ul>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>上傳論文計畫書(Step 1 填寫論文計畫書題目) </h2>  
                    </div>
                </div>
                <div class="table-responsive">
                <form method="post" action="b_s_projects_action.jsp">  
                <p><font　face="標楷體"　color="#cc33ff"　size="7">學生學號 : <%=id%></font></p>
                <p><font　face="標楷體"　color="#cc33ff"　size="7">期別 : <%=rs.getString(2)%></font></p>
                <p><font　face="標楷體"　color="#cc33ff"　size="7">姓名 : <%=rs.getString(3)%></font></p>
        
                <p>請輸入論文計畫書題目(中文)必填: <input type="text" name="pro_name_chinese" size="20"></p>
                <p>請輸入論文計畫書題目(英文): <input type="text" name="pro_name_english" size="20"></p>
                <input name="Submit" type="submit" value="送出">
                 </form> 
   
                </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
         <%             
         rs.close(); 
         con.close();
          %>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
     