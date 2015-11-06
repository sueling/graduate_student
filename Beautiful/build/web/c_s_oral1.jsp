<%-- 
    Document   : oral1
    Created on : 2014/12/25, 下午 11:02:01
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="oral" class="bean.condb" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Bootstrap Admin Template : Binary Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
   
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Binary admin</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Last access : 30 May 2014 &nbsp; <a href="login.html" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
						
                    <li><a   href=d_newest.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
                    <li><a   href=d_rule.jsp"><i class="fa fa-book fa-3x"></i> 學程相關規定</a></li>
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
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>學位考試</h2>   
                        <div class="tabbable"> 
                            <!-- Only required for left/right tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="c_s_oral1.jsp" data-toggle="tab">Step 1</a></li>
                                <li><a href="c_s_oral2.jsp" data-toggle="tab">Step 2</a></li>
                                <li><a href="c_s_oral4.jsp" data-toggle="tab">Step 3</a></li>
                            </ul>
                        </div>
   
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />      
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             口試委員暨口試時間推薦表
                        </div>
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <form action="c_s_oral3.jsp" method="post">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>口試委員姓名(or_name)</th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="odd gradeX">
                                                <td><select name="oral_name">
                                                        
                                                        <option value="林裕淇">林裕淇</option>
                                                        <option value="張敦仁">張敦仁</option>
                                                        <option value="劉興華">劉興華</option>
                                                        <option value="黃志泰">黃志泰</option>
                                                        <option value="劉定衢">劉定衢</option>
                                                    </select>
                                                </td>

                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="form-action text-right">
                                        <input name="button" type="submit" value="送出">
                                    </div>
                                </form>    
                            </div>
                        </div>
                    </div>
                    <a href="c_s_oral_teacher.jsp">口試委員名單</a>
                    <!--End Advanced Tables -->
                    
                </div>
            </div>
                 
            <ul class="nav nav-list">
                ..............................................................................................................................................................................................................................................................................
                <li class="divider"></li>
            </ul>
            <%
                Connection con = oral.connectdb();
                String sql1 = "select * from oral_decision left join oral_teacher on oral_decision.oral_name=oral_teacher.or_name";
                ResultSet rs = oral.executeQuery(sql1);
            %> 
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             口試委員暨口試時間推薦表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <form action="c_s_oral_delete.jsp " method="post">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>口試委員姓名(or_name)</th>
                                            <th>現職單位(organization)</th>
                                            <th>職稱(professional_title)</th>
                                            <th>學歷(academic_background)</th>
                                            <th>經歷(experience)</th>
                                            <th>教授擬排口試時間(time)</th>
                                            <th>金錢(money)</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <%while(rs.next()){%>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td><%=rs.getString("oral_name") %></td>
                                            <td><%=rs.getString("organization") %></td>
                                            <td><%=rs.getString("professional_title") %></td>
                                            <td><%=rs.getString("academic_background") %></td>
                                            <td><%=rs.getString("experience") %></td>
                                            <td><%=rs.getString("time") %></td>
                                            <td><%=rs.getString("money") %></td>
                                            <td><a href=c_s_oral_delete.jsp?oral_name=<%=rs.getString("oral_name")%>>刪除</a></td>
                                        </tr>
                                    </tbody>
                                    <%
                                        }
                                        rs.close();
                                        con.close();
                                    %> 
                                </table>
                                金額總計:
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>     
                 <p class="text-right"><a href="c_s_oral2.jsp" class="btn btn-primary">下一步</a></p>
                <!-- /. ROW  -->
        </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
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