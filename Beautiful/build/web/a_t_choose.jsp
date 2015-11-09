<%-- 
    Document   : a_t_choose
    Created on : 2015/3/30, 上午 12:30:15
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
    <%=session.getAttribute("user_id")%>
     <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String sql = "SELECT student.st_id,student.grade,student.st_name FROM student";
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
                                <li><a  href="a_t_choose.jsp"><i class="fa fa-plus fa-2x"></i> 查看指導教授同意書</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                    
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_t_projects_saw.jsp"><i class="fa fa-plus fa-2x"></i>審查論文計畫書</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>師生審查意見往返</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 老師意見回覆</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>論文計劃書口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 查看口試申請書</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>論文加分</a>
                        <ul class="nav nav-second-level">
                            
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>學位考試</a>
                            <ul class="nav nav-second-level">
                                
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
            <div id="page-inner">
                <ul class="breadcrumb">
                    <li><a href="d_t_index.jsp">首頁</a> <span class="divider"></span></li>
                    <li class="active">查看指導教授同意書</li>
                </ul> 
                <div class="row">
                    <div class="col-md-12">
                     <h2>指導教授同意書</h2>  
                       <h5>某某,您好！</h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
               <!--  表格 -->
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                   
                                    <thead>
                                        <tr>
                                            <th>學號</th>
                                            <th>年班</th>
                                            <th>姓名</th>
                                            <th>同意</th> 
                                            <th>不同意</th>
                                        </tr>
                                    </thead>
                                        <%
                                            while(rs.next()){
                                               String st_id = rs.getString(1);
                                               String grade = rs.getString(2);
                                               String st_name = rs.getString(3);
                                        %>
                                        <tbody>
                                            <tr>
                                             <td><b><%=st_id%></b></td>
                                             <td><b><%=grade%></b></td>
                                             <td><b><a href=a_t_choose1.jsp"><%=st_name%></a></b></td>
                                             <td><input type="radio" name="examine" value="Yes"></td>
                                             <td><input type="radio" name="examine" value="Yes"></td> 
                                            </tr>
                                        <%
                                          }
                                        %>
                                       </tbody>
                                       
                                </table>
                                       <a href="a_get_replied.jsp" class="btn btn-danger square-btn-adjust">送出</a>
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