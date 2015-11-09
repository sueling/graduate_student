<%-- 
    Document   : b_s_optioncycle1
    Created on : 2015/9/9, 上午 10:18:39
    Author     : jill
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
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT suggestion_title.te_id,suggestion_title.st_id,suggestion_title.title FROM suggestion_title WHERE suggestion_title.title = '"+str+"'";
            String sql2 = "SELECT student.st_id,student.st_name FROM student WHERE student.st_id = '"+id+"'";
            String sql3 = "SELECT * FROM suggestion WHERE suggestion.title = '"+str+"'";
            PreparedStatement smt = con.prepareStatement(sql);
            PreparedStatement smt2 = con.prepareStatement(sql2);
            PreparedStatement smt3 = con.prepareStatement(sql3);
           ResultSet rs = smt.executeQuery();
           ResultSet rs2 = smt2.executeQuery();
           ResultSet rs3 = smt3.executeQuery();
          rs.next();
          rs2.next();
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
                    <li><a   href="d_s_personal.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
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
            <li><a href="d_a_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書/</li>
            <li><a href="b_s_optioncycle1.jsp">審查意見</a> <span class="divider"></span></li>
            </ul>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>審查意見</h2>  
                     <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">

                         </div>
                     <div class="table-responsive">
                         <form method="post" action="test3.jsp?name=<%=str%>"> 
                    <table>
                        <td>發言老師編號:&nbsp;&nbsp;<%=rs.getString(1)%></td>
                          <tr><td>學生姓名:&nbsp;&nbsp;<%=rs2.getString(2)%></td></tr>
                          <tr><td>題目:&nbsp;&nbsp;<%=str%></td></tr>
                          <br>
                      </table>
                          <br>
                              <%while(rs3.next()){%>
                    <table BORDER WIDTH="80%" color="red" >
                        <tbody>
                        <tr><td>&nbsp;&nbsp;訊息:<%=rs3.getString(1)%></td></tr>
                        <tr><td>&nbsp;&nbsp;時間:<%=rs3.getString(4)%></td></tr>
                        </tbody>
                        <br>
                    </table>
                        <%
                              }
                        %>
                        <br>
                         <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                       <tbody>
                         <tr>
                           <td>學生意見回覆</td>
                         </tr>
                           
                         <tr>
                           <td><textarea rows="0" cols="52" name="suggestion">
                               </textarea>
                            <p><form>
                                    <input type="submit"  name="Insert"  value="送出" size=100>
                               </form>
                            </p>
                           </td>
                         </tr>
                                         
                       </tbody>
                     </table>
                         </form>
                    </div>
              
                    </div> 
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    </div>
        <%
        rs.close();
        rs2.close();
        rs3.close();
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