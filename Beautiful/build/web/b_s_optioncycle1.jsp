<%-- 
    Document   : b_s_optioncycle1
    Created on : 2015/9/9, �W�� 10:18:39
    Author     : jill
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="Big5" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>��s�;ǵ{�p�e</title>
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
            String sql2 = "SELECT suggestion_title.title,suggestion_title.besaw FROM suggestion_title WHERE suggestion_title.besaw = '1' AND suggestion_title.st_id = '"+id+"'";
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
                <a class="navbar-brand" href="#">��s�;ǵ{�p�e</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="d_changepassword.jsp" class="btn btn-danger square-btn-adjust">�ק�K�X</a><a href="d_login.jsp" class="btn btn-danger square-btn-adjust">�n�X</a></div>
        </nav>   
           <!-- /. NAV TOP -->
<nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
                    <li><a   href="d_s_personal.jsp"><i class="fa fa-user fa-3x"></i> �򥻸��</a></li>
                    <li><a   href="d_rule.jsp"><i class="fa fa-book fa-3x"></i> �ǵ{�����W�w</a></li>
                    <li>
                        <a  href="#"><i class="fa fa-file-archive-o fa-3x"></i> ���ɱб¦P�N��</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="a_s_choose.jsp"><i class="fa fa-plus fa-2x"></i> ��ܫ��ɱб�</a></li>
                            </ul>
                    </li>    
		    <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>�פ�p�e��</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_s_projects.jsp"><i class="fa fa-plus fa-2x"></i>�W�ǽפ�p�e��</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>�v�ͼf�d�N������</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> �ǥͷN���^��</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>�פ�p�e�Ѽf�d���G</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_result.jsp"><i class="fa fa-plus fa-2x"></i> �d�߼f�d���G</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>�פ�p���Ѥf��</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> �ӽФf��</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>�פ�[��</a>
                            <ul class="nav nav-second-level">
                                <li><a href="c_s_add_point.jsp"><i class="fa fa-plus fa-2x"></i> �[��</a></li>
                            </ul>    
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>�Ǧ�Ҹ�</a>
                            <ul class="nav nav-second-level">
                                <li><a href="c_s_oral1.jsp"><i class="fa fa-plus fa-2x"></i> �Ǧ�Ҹ�</a></li>
                            </ul>
                    </li>        
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>�f�դ����յ{��</a>
                            <ul class="nav nav-second-level" >  
                            </ul>
                    </li> 
                </ul>
               
            </div>
            
        </nav>     
<!-- /. NAV SIDE -->
        <div id="page-wrapper" >
            <ul class="breadcrumb">
            <li><a href="d_a_index.jsp">����</a> <span class="divider">/</span></li>
            <li>�פ�p�e��/</li>
            <li><a href="b_s_optioncycle1.jsp">�f�d�N��</a> <span class="divider"></span></li>
            </ul>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>�f�d�N��</h2>  
                     <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">

                         </div>
                     &nbsp;<div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
           <thead>
             <tr>
               <td><big>�N����</big></td>
             </tr>
           </thead>
               <%
                while(rs2.next()){
                   String title = rs2.getString("title");
                %>
                <tbody>
            <tr>
             <td><b><a href="b_s_optioncycle.jsp?name=<%=title%>"><%=title%></a></b></td>
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
