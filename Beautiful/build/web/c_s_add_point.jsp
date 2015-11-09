<%-- 
    Document   : add_point3
    Created on : 2014/12/25, 下午 04:16:55
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="point" class="bean.condb" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                            <h2>加分</h2>   
                            <h5>論文題目:</h5>
                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <hr /> 
                    <div class="row">
                        <div class="col-md-12">
                        <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    加分申請表
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <form action="c_s_add_point2.jsp" method="post">
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>發表刊物(po_name)</th>
                                                        <th>發表論文題目(publish)</th>
                                                        <th>發表研究生人數(member)</th>
                                                        <th>審查中(examine)</th>
                                                        <th>分類編號(number)</th>
                                                        <th>申請分數(score)</th>
                                                    </tr>
                                                </thead>
                                                
                                                <tbody>
                                                    <tr class="odd gradeX">
                                                        <td><input type="text" name="po_name" size="20"></td>
                                                        <td><input type="text" name="publish" size="20"></td>
                                                        <td><input type="text" name="member" size="10"></td>
                                                        <td class="center">審查中 <input type="radio" name="examine" value="審查中">
                                                                           已刊登 <input type="radio" name="examine" value="已刊登"></td>
                                                        <td><select name="number">
                                                                <option value="1">1. 已獲SCI、SSCI與EI等級國內外學術期刊刊登或接受者</option>
                                                                <option value="2">2. 已獲國外學術期刊刊登或接受者</option>
                                                                <option value="3">3. 已獲國內大專院校學術期刊（學報）刊登或接受者</option>
                                                                <option value="4">4. 已獲國內軍事期刊刊登或接受者</option>
                                                                <option value="5">5. 已獲學術會議刊登或接受者</option>
                                                            </select>
                                                        </td>
                                                        <td><input type="text" name="score" size="10"></td>
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
                            <!--End Advanced Tables -->
                        </div>
                    </div> 
                    <!-- /. ROW  -->
                    <ul class="nav nav-list">
                        <li class="divider"></li>
                    </ul>
                ................................................................................................................................................................................................................................................................................
                    <%
                        Connection con = point.connectdb();
                        String sql1 = "select * from add_point";
                        ResultSet rs = point.executeQuery(sql1);
                    %> 
                    <div class="row">
                        <div class="col-md-12">
                        <!-- Advanced Tables -->
                            <div class="panel panel-default">
                            <div class="panel-heading">
                                加分申請表
                            </div>
                            <div class="panel-body" id="show">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>發表刊物(po_name)</th>
                                                <th>發表論文題目(release)</th>
                                                <th>發表研究生人數(member)</th>
                                                <th>審查中(examine)</th>
                                                <th>分類編號(classify number)</th>
                                                <th>申請分數(score)</th>
                                            </tr>
                                        </thead>
                                        <%while(rs.next()){%>
                                        <tbody>
                                            <tr class="odd gradeX">
                                                <td><%=rs.getString("po_name") %></td>
                                                <td><%=rs.getString("publish") %></td>
                                                <td><%=rs.getString("member") %></td>
                                                <td><%=rs.getString("examine") %></td>
                                                <td><%=rs.getString("number") %></td>
                                                <td><%=rs.getString("score") %></td>
                                            </tr>
                                        </tbody>
                                        <%
                                        }
                                        rs.close();
                                        con.close();
                                        %>    
                                    </table>
                                </div>
                            </div>
                            </div>
                        <!--End Advanced Tables -->
                        </div>
                    </div>
                    <p class="text-right"><a href="d_s_index.jsp" class="btn btn-primary">回首頁</a></p>   
                   
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