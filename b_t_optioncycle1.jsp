<%-- 
    Document   : b_t_optioncycle1
    Created on : 2015/9/9, 上午 10:55:57
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
            String sql = "SELECT MAX(id) as maxid FROM distribute WHERE distribute.st_id = '"+str+"' AND distribute.te_id = '"+id+"'";
            PreparedStatement smt = con.prepareStatement(sql);
           ResultSet rs = smt.executeQuery();
           rs.next();
           int max = Integer.parseInt(rs.getString(1));
            String sql2 = "SELECT suggestion_title.te_id,suggestion_title.title,suggestion_title.st_id,suggestion_title.besaw,suggestion_title.title_num,suggestion_title.id FROM suggestion_title WHERE suggestion_title.id = '"+max+"'";
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
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 查看口試申請書</a></li>
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
            <li><a href="d_a_index.jsp">首頁</a> <span class="divider">/</span></li>
            <li>論文計畫書/</li>
            <li><a href="b_s_optioncycle2.jsp">學生申請論文計劃書審查口試</a> <span class="divider"></span></li>
            <li><a href="b_s_optioncycle1.jsp">審查意見標題</a> <span class="divider"></span></li>
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
                         <form action="addtitle.jsp?name=<%=str%>" method="post">
                         <table>
        <tr><td><big>學生學號: <%=str%></big></td></tr>
        <tr><td><big>新增審查意見標題: </big><input type="text" name="title" size="40"></td></tr>
	<tr><td><big>審查意見:</big><br> <textarea rows="5" cols="60" name="suggestion">  
            </textarea></td></tr><P>
            </table>
               <input type="submit"  name="Insert"  value="送出"" size=100>
                <input type="reset"   value="清除" size=100>
                    <br>
                    <br>  
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
           <thead>
             <tr>
               <td><big>意見欄</big></td>
             </tr>
           </thead>
               <%
                    while(rs2.next()){
                        String title = rs2.getString(2);
                        int besaw = Integer.parseInt(rs2.getString(4));
                         if(besaw==1){
                %>
                <tbody>
            <tr>
             <td><b><a href="b_t_optioncycle.jsp?name=<%=title%>"><%=title%></a></b></td>
            </tr>
           </tbody>
            <%
                        }
               }
            %>
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
