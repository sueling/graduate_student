<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
    <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

</head>
<body>
   <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String query = "SELECT * FROM  new_issues WHERE ID = ?";
            java.sql.PreparedStatement statement = con.prepareStatement(query);
            statement.setInt(1,Integer.parseInt(request.getParameter("id")));
            java.sql.ResultSet RS = statement.executeQuery();
		while(RS.next())
			{

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
                <a class="navbar-brand" href="b_mainperson.jsp">研究生學程計畫</a> 
            </div>
 <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="b_login.jsp" class="btn btn-danger square-btn-adjust">登出</a></div>
</nav>   
           <!-- /. NAV TOP -->
<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
<ul class="nav" id="main-menu">
<li class="text-center">
<img src="assets/img/find_user.png" class="user-image img-responsive"/>
</li>
<li>
<a href="b_mainperson.jsp"><i class="fa fa-dashboard fa-3x"></i> 最新消息</a>
</li>
<li>
<a href="b_plan.jsp"><i class="fa fa-desktop fa-3x"></i> 學程計畫表</a>
</li>
<li>
<a href="b_rule.jsp"><i class="fa fa-bar-chart-o fa-3x"></i> 學程相關規定</a>
</li>
<li>
<a href="a_choose_2.jsp"><i class="fa fa-qrcode fa-3x"></i> 指導教授同意書</a>
</li>
<li>
<a class="active-menu" href="#"><i class="fa fa-bar-chart-o fa-3x"></i>論文計畫書</a>
<ul class="nav nav-second-level">
<li>
<a href="b_projects.jsp"><i class="fa fa-plus fa-2x"></i>上傳論文計畫書</a>
</li>
<li>
<a href="b_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i>師生審查意見往返</a>
</li>
<li>
<a href="b_finalall.jsp"><i class="fa fa-plus fa-2x"></i>審查結果</a>
</li>
<li>
<a href="b_firstoral.jsp"><i class="fa fa-plus fa-2x"></i>申請口試</a>
</li>
</ul>
</li>
<li>
<a href="#"><i class="fa fa-folder fa-3x"></i> 論文初稿及加分</a>
<ul class="nav nav-second-level">
<li><a href="c-add_point3.jsp"><i class="fa fa-plus fa-2x"></i> 加分</a></li>
<li><a href="c-oral1.jsp"><i class="fa fa-pencil fa-2x"></i> 學位考試</a></li>
</ul>
</li> 
<li>
<a href="c-firstoral.jsp"><i class="fa fa-bar-chart-o fa-3x"></i>口試及離校程序</a>
</li> 
</ul>
</div>
    
    
    
    
</nav> 
<!-- /. NAV SIDE -->
      <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                    </div>
                    </div>
                    <!-- /. ROW  -->
                    <hr />
                    <div class="panel-body">
                     <div class="table-responsive">
                     <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    
                        <colgroup style="width:400px;"></colgroup>
                        <colgroup style="width:100px;"></colgroup>
                        <colgroup style="width:100px;"></colgroup>
                        <tbody>
                               
                        <tr>
                            <th>標題</th>
                            <th>時間</th>
                            <th>狀態</th>

                        </tr>
                    <tr>
               
               <input type="hidden" name="ID" 
                       value="<%=RS.getString("ID") %>">
                <td><b><%=RS.getString("title") %></b></td>
                 <td><b><%=RS.getString("time") %></b></td>
                 <td>
               
                 <select name="mySelect">
                 
                  <option value="已讀">已讀</option>
                  <option value="待審">待審</option>
                  <option value="未讀">未讀</option>
                   </select>
                </td>
               </tr>
            </tbody>
          </table>
        </div>
  </div>
                        <div class="col-md-15 col-sm-15">
                        <div class="panel panel-primary">
                        <div class="panel-heading">
                            內容
                        </div>
               <tr>
              <b></b><%=RS.getString("content") %><br>
             </tr>
             <div class="panel-body">
              <p></p>
              </div>
              </div>
              <a href="firstPageDelete.jsp" class="btn btn-default">回上一頁</a>                       
                </div>
		 <!-- /. ROW  -->
                </div>
                </div>
                <!-- /. ROW  -->
                </div>
                <%
                                        } 
                        RS.close();
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
     <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>

      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
</body>
</html>