<%-- 
    Document   : b_t_optioncycle1
    Created on : 2015/9/9, �W�� 10:55:57
    Author     : jill
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
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
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT MAX(id) as maxid FROM suggestion_title WHERE suggestion_title.st_id = '"+str+"' AND suggestion_title.te_id = '"+id+"'";
            PreparedStatement smt = con.prepareStatement(sql);
           ResultSet rs = smt.executeQuery();
           rs.next();
           String max = rs.getString(1);
            String sql2 = "SELECT suggestion_title.te_id,suggestion_title.title,suggestion_title.st_id,suggestion_title.besaw,suggestion_title.title_num,suggestion_title.id FROM suggestion_title RIGHT JOIN distribute ON suggestion_title.id = distribute.id WHERE suggestion_title.id = '"+max+"'";
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
                    <li><a   href="d_personal.jsp"><i class="fa fa-user fa-3x"></i> �򥻸��</a></li>
                    <li><a   href="d_rule.jsp"><i class="fa fa-book fa-3x"></i> �ǵ{�����W�w</a></li>
                    <li>
                        <a  href="#"><i class="fa fa-file-archive-o fa-3x"></i> ���ɱб¦P�N��</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="a_t_choose.jsp"><i class="fa fa-plus fa-2x"></i> �d�ݫ��ɱб¦P�N��</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>�פ�p�e��</a>
                    
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_t_projects_saw.jsp"><i class="fa fa-plus fa-2x"></i>�f�d�פ�p�e��</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>�v�ͼf�d�N������</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_optioncycle1.jsp"><i class="fa fa-plus fa-2x"></i> �Ѯv�N���^��</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>�פ�p���Ѥf��</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> �d�ݤf�եӽЮ�</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i>�פ�[��</a>
                        <ul class="nav nav-second-level">
                            
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-check-square fa-3x"></i>�Ǧ�Ҹ�</a>
                            <ul class="nav nav-second-level">
                                
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
                     <div class="table-responsive">
                         <form action="addtitle.jsp?name=<%=str%>" method="post">
                         <table>
        <tr><td><big>�ǥ;Ǹ�: <%=str%></big></td></tr>
        <tr><td><big>�s�W�f�d�N�����D: </big><input type="text" name="title" size="40"></td></tr>
	<tr><td><big>�f�d�N��:</big><br> <textarea rows="5" cols="60" name="suggestion">  
            </textarea></td></tr><P>
            </table>
               <input type="submit"  name="Insert"  value="�e�X"" size=100>
                <input type="reset"   value="�M��" size=100>
                    <br>
                    <br>  
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
           <thead>
             <tr>
               <td><big>�N����</big></td>
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
