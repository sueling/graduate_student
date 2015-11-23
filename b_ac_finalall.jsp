<%-- 
    Document   : teacher
    Created on : 2014/12/31, 下午 02:36:50
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
    <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String sql = "SELECT distribute.st_id,student.grade,student.st_name,proposal.pro_name_english,proposal.pro_name_chinese,distribute.finalall FROM student,proposal,distribute";
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
                <a class="navbar-brand" href="d_index.jsp">研究生學程計畫</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="d_login.jsp" class="btn btn-danger square-btn-adjust">登出</a></div>
        </nav>   
           <!-- /. NAV TOP -->
<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
<ul class="nav" id="main-menu">
<li class="text-center">
<img src="assets/img/find_user.png" class="user-image img-responsive"/>
</li>
<li>
<a href="d_newest.jsp"><i class="fa fa-dashboard fa-3x"></i> 最新消息</a>
</li>
<li>
<a href="b_plan.jsp"><i class="fa fa-desktop fa-3x"></i> 學程計畫表</a>
</li>
<li>
<a href="b_rule.jsp"><i class="fa fa-bar-chart-o fa-3x"></i> 學程相關規定</a>
</li>
<li>
<a  href="a_choose_2.jsp"><i class="fa fa-qrcode fa-3x"></i> 指導教授同意書</a>
</li>
<li>
<a class="active-menu" href="#"><i   class="fa fa-bar-chart-o fa-3x"></i>論文計畫書</a>
<ul class="nav nav-second-level">
<li>
<a href="b_projects.jsp"><i class="fa fa-plus fa-2x"></i>上傳論文計畫書</a>
</li>
<li>
<a href="b_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i>師生審查意見往返</a>
</li>
<li>
<a class="active-menu" href="b_finalall.jsp"><i class="fa fa-plus fa-2x"></i>審查結果</a>
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
            <ul class="breadcrumb">
            <li><a href="d_index.jsp">首頁</a> <span class="divider">/</span></li>
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
                     &nbsp;<table td align='center';table style="border: 5px groove rgb(109, 2, 107); background-color: rgb(255, 255, 255); width: 800px;" align="left" cellpadding="5" cellspacing="5" frame="border" rules="all">
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
                while(rs.next()){
                   String st_id = rs.getString(1);
                   String grade = rs.getString(2);
                   String st_name = rs.getString(3);
                   String pro_name_english = rs.getString(4);
                   String pro_name_chinese = rs.getString(5);
                   String finalall = rs.getString(6);
                %>
                <tbody>
            <tr>
             <td><b><%=st_id%></b></td>
             <td><b><%=grade%></b></td>
             <td><b><%=st_name%></b></td>
             <td><b><%=pro_name_english%></b></td>
             <td><b><%=pro_name_chinese%></b></td>
             <td><b><%=finalall%></b></td>
            </tr>
             <%
              }
            %>
           </tbody>
         </table>
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