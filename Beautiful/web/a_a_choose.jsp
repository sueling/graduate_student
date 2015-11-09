<%-- 
    Document   : a_a_choose
    Created on : 2015/3/29, 下午 11:48:08
    Author     : user
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
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
     <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String sql = "SELECT student.st_id,student.grade,student.st_name,proposal.pro_name_english,proposal.pro_name_chinese FROM student,proposal";
            PreparedStatement smt = con.prepareStatement(sql);
          ResultSet rs = smt.executeQuery();
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
                <a class="navbar-brand" href="index.jsp">研究生學程計畫</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 15px;"><a href="d_registeration.jsp" class="btn btn-danger square-btn-adjust">修改密碼</a><a href="d_login.jsp" class="btn btn-danger square-btn-adjust">登出</a> </div>
        </nav> 
    
          <!-- /. NAV TOP  -->
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
                                <li><a  href="a_a_choose.jsp"><i class="fa fa-plus fa-2x"></i> 統整指導教授同意書</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                    
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_a_projects_list.jsp"><i class="fa fa-plus fa-2x"></i>論文計畫書審查名冊</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>論文計畫書審查結果</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_a_finalall.jsp"><i class="fa fa-plus fa-2x"></i> 審查成績冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>論文計劃書口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_a_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 口試名冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>論文加分</a>
                        <ul class="nav nav-second-level">
                            <li><a href="c_a_add_end.jsp"><i class="fa fa-plus fa-2x"></i> 加分匯總表</a></li>
                        </ul>    
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>學位考試</a>
                        <ul class="nav nav-second-level">
                                        <li><a href="c_a_oral_end.jsp"><i class="fa fa-plus fa-2x"></i> 口試申請匯總表</a></li>
                                        <li><a href="c_a_oral4_end.jsp"><i class="fa fa-plus fa-2x"></i>論文題要匯總表</a>
                                            <li><a href="c_a_oral2_end.jsp"><i class="fa fa-plus fa-2x"></i>論文考試申請匯總表</a></li>
                        </ul>
                    </li>        
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>口試及離校程序</a>
                            <ul class="nav nav-second-level" >
                                <a href="c_a_vote_end.jsp"><i class="fa fa-plus fa-2x"></i>投票結果表</a>
                            </ul>
                    </li> 
                </ul>
            </div>
        </nav>        
        <!-- /. NAV SIDE  -->
          <div id="page-wrapper" >
            <div id="page-inner">
                <ul class="breadcrumb">
                    <li><a href="d_ａ_index.jsp">首頁</a> <span class="divider"></span></li>
                    <li class="active">統整指導教授同意書</li>
                </ul> 
                 <!-- /. ROW  -->
               <!--  表格 -->
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                   
                                    <thead>
                                        <tr>
                                            <th>學號</th>
                                            <th>年班</th>
                                            <th>姓名</th>
                                            <th>狀態</th>                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>   
                                            <td></td>                                           
                                        </tr>                                     
                                    </tbody>
                                </table>
                            </div>
                     <!-- End  表格 -->
                        
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
            </div>
    </div>
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