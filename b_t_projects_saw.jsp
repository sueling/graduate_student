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
            int over1=0;
            String sql2 = "SELECT student.st_id,student.st_name,student.grade FROM student RIGHT JOIN distribute ON student.st_id = distribute.st_id WHERE distribute.over = '"+over1+"' AND distribute.te_id = '"+id+"'";
            PreparedStatement smt2 = con.prepareStatement(sql2);
            ResultSet rs2 = smt2.executeQuery();
           String sql3 = "SELECT proposal.pro_name_english,proposal.pro_name_chinese,proposal.st_id FROM proposal RIGHT JOIN distribute ON proposal.st_id = distribute.st_id WHERE distribute.over = '"+over1+"' AND distribute.te_id = '"+id+"'";
          PreparedStatement smt3 = con.prepareStatement(sql3);
          ResultSet rs3 = smt3.executeQuery();
          
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
                    <li><a   href="d_t_personal.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
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
                                <li><a  href="b_t_optioncycle2.jsp"><i class="fa fa-plus fa-2x"></i> 老師意見回覆</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>論文計劃書口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i>學生申請論文計劃書審查口試</a></li>
                                <li><a  href="b_t_accept_oral.jsp"><i class="fa fa-plus fa-2x"></i> 已接受論文計劃書審查口試申請名冊</a></li>
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
<!-- /. NAV SIDE -->
        <div id="page-wrapper" >
            <ul class="breadcrumb">
            <li><a href="d_t_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書/</li>
            <li><a href="b_t_projects_saw.jsp">審查論文計畫書</a> <span class="divider"></span></li>
            </ul>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>審查論文計畫書</h2>  
                    </div>
                </div>
                 &nbsp;<div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
           <tbody>
             <tr>
               <td>學號</td>
               <td>期別</td>
               <td>姓名</td>
               <td>論文計畫書題目(英文)</td>
               <td>論文計畫書題目(中文)</td>
               <td>下載論文計畫書</td>
               <td>意見回覆</td>
               <td>輸入成績</td>
             </tr>
               <%
                    while(rs2.next()&&rs3.next()){
                        String st_id = rs2.getString(1);
                        String grade = rs2.getString(3);
                        String st_name = rs2.getString(2);
                        String pro_name_english = rs3.getString(1);
                        String pro_name_chinese = rs3.getString(2);
                                            %>
             <tr>
               <td><b><%=st_id%></b></td>
              <td><b><%=grade%></b></td>
               <td><b><%=st_name%></b></td>
               <td><b><%=pro_name_english%></b></td>
               <td><b><%=pro_name_chinese%></b></td>
               <td><b><a href="b_t_projects_download.jsp?name=<%=st_id%>">下載</a></b></td>
               <td><b><a href="b_t_optioncycle1.jsp?name=<%=st_id%>">意見回覆</a></b></td>
               <td><b><form method="post" action="proposalscore.jsp?name1=<%=st_id%>">
                    <input type=radio value="3" name="passornot"> 通過
                    <input type=radio value="2" name="passornot"> 不通過
                    <input type=radio value="1" name="passornot"> 修改後審
                    <p><form><input type="submit"  name="Submit"  value="送出" size=100></form></p>
                </form></b></td>
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