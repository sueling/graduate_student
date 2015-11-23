
<%-- 
    Document   : d_a_index
    Created on : 2015/4/12, 上午 11:18:23
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
     <%= session.getAttribute("user_id")%>
     <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT advisor_pro,common_pro1,common_pro2 FROM choose_teacher WHERE st_id = '"+id+"' AND choose_teacher.choose_num = (SELECT MAX(choose_num) FROM choose_teacher)";
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            rs.next();
            String advisor_pro,common_pro1,common_pro2;
            advisor_pro = rs.getString("advisor_pro");
            common_pro1 = rs.getString("common_pro1");
            common_pro2 = rs.getString("common_pro2");
            String sql1 = "SELECT teacher.te_name,choose_teacher.advisor_pro FROM teacher,choose_teacher WHERE teacher.te_id = '"+advisor_pro+"'";
            PreparedStatement smt1 = con.prepareStatement(sql1);
            ResultSet rs1 = smt1.executeQuery();
            String sql2 = "SELECT teacher.te_name,choose_teacher.common_pro1 FROM teacher,choose_teacher WHERE teacher.te_id = '"+common_pro1+"'";
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
            String sql3 = "SELECT teacher.te_name,choose_teacher.common_pro2 FROM teacher,choose_teacher WHERE teacher.te_id = '"+common_pro2+"'";
            PreparedStatement smt3 = con.prepareStatement(sql3);
            ResultSet rs3 = smt3.executeQuery();
            rs1.next();
            rs2.next();
            rs3.next();
            
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
font-size: 15px;"><a href="d_registeration.jsp" class="btn btn-danger square-btn-adjust">修改密碼</a><a href="d_logout.jsp" class="btn btn-danger square-btn-adjust">登出</a> </div>
        </nav> 
    
          <!-- /. NAV TOP  -->
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
                                <li><a  href="b_s_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 學生意見回覆</a></li>
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
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
              <ul class="breadcrumb">
                  <li class="active">首頁</li>
             </ul> 
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    已選擇指導教授
                                    <thead>
                                        <tr>
                                            <th>基本資料</th>
                                            <th>指導教授</th> 
                                            <th>共同指導教授</th> 
                                            <th>共同指導教授</th> 
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <th>姓名</th>
                                            
                                            <td><%=rs1.getString("te_name")%></td>
                                    
                                    
                                            <td><%=rs2.getString("te_name")%></td>
                                   
                                   
                                            <td><%=rs3.getString("te_name")%></td>
                                   
                                        </tr>                                     
                                    </tbody>
                                    
                                </table>
                                請等候老師的回覆
                    </div>
                  
                    <!-- /. ROW  -->
                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
            </div>
    </div>
 
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
