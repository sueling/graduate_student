<%-- 
    Document   : b_c_finalall
    Created on : 2015/5/20, 上午 08:38:16
    Author     : Jill
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
           String sql = "SELECT * FROM student RIGHT JOIN proposal ON student.st_id = proposal.st_id";
            String sql2 = "SELECT * FROM proposal LEFT JOIN student ON proposal.st_id = student.st_id";
            PreparedStatement smt = con.prepareStatement(sql);
           ResultSet rs = smt.executeQuery();
           PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs2 = smt2.executeQuery();
          
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
                                <li><a  href="a_c_choose.jsp"><i class="fa fa-plus fa-2x"></i> 檢視指導教授同意書</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_c_distribute.jsp"><i class="fa fa-plus fa-2x"></i>分派審查論文計畫書</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>論文計畫書審查結果</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_c_finalall.jsp"><i class="fa fa-plus fa-2x"></i> 審查成績冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>論文加分</a>
                            <ul class="nav nav-second-level">
                               <li><a href="c_c_examine1.jsp"><i class="fa fa-plus fa-2x"></i> 加分審核</a></li> 
                            </ul>
                    </li>
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>口試及離校程序</a>
                    </li> 
                </ul>
               
            </div>
            
        </nav>     
<!-- /. NAV SIDE -->
        <div id="page-wrapper" >
            <ul class="breadcrumb">
            <li><a href="d_c_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書/</li>
            <li><a href="b_ac_finalall.jsp">審查成績冊</a> <span class="divider"></span></li>
            </ul>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>審查成績冊</h2>  
                     <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="#" class="btn btn-warning"><big>列印審查成績冊</big></a>

                         </div>
                     &nbsp;<div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
           <thead>
             <tr>
               <td><big>學號</big></td>
               <td><big>期別</big></td>
               <td><big>姓名</big></td>
               <td><big>論文計劃書題目(英文)</big></td>
               <td><big>論文計劃書題目(中文)</big></td>
               <td><big>審查結果</big></td>
             </tr>
           </thead>
                <%
                while(rs2.next()&&rs.next()){
                String st_id = rs2.getString(2);
                String grade = rs.getString(8);
                String st_name = rs.getString(2);
                String pro_name_english = rs2.getString(3);
                String pro_name_chinese = rs2.getString(4);
                int final_score = Integer.parseInt(rs2.getString(5));
                %>
                <tbody>
            <tr>
             <td><b><%=st_id%></b></td>
             <td><b><%=grade%></b></td>
             <td><b><%=st_name%></b></td>
             <td><b><%=pro_name_english%></b></td>
             <td><b><%=pro_name_chinese%></b></td>
             <td><b><%=final_score%></b></td>  
            </tr>
             <%
              }
            %>
           </tbody>
         </table>
                    </div>
              
                    </div> 
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    </div>
        <%
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
