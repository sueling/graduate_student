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
font-size: 16px;"></div>
        </nav>   
           <!-- /. NAV TOP -->
<nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
                    <li><a   href=d_newest.jsp"><i class="fa fa-user fa-3x"></i> 基本資料</a></li>
                    <li><a   href=d_newest.jsp"><i class="fa fa-dashboard fa-3x"></i> 最新消息</a></li>
                    
                    <li><a   href=d_rule.jsp"><i class="fa fa-book fa-3x"></i> 學程相關規定</a></li>
                    <li>
                        <a  href="#"><i class="fa fa-file-archive-o fa-3x"></i> 指導教授同意書</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="a_s_choose.jsp"><i class="fa fa-plus fa-2x"></i> 選擇指導教授</a></li>
                                <li><a  href="a_t_choose.jsp"><i class="fa fa-plus fa-2x"></i> 查看指導教授同意書</a></li>
                                <li><a  href="a_c_choose.jsp"><i class="fa fa-plus fa-2x"></i> 檢視指導教授同意書</a></li>
                                <li><a  href="a_a_choose.jsp"><i class="fa fa-plus fa-2x"></i> 統整指導教授同意書</a></li>
                            </ul>
                    </li>
                        
		     <li>
                        <a   href="#"><i class="fa fa-file-text fa-3x"></i>論文計畫書</a>
                    
                        <ul class="nav nav-second-level">
                            <li>
                                <a  href="b_s_projects.jsp"><i class="fa fa-plus fa-2x"></i>上傳論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_t_projects_saw.jsp"><i class="fa fa-plus fa-2x"></i>審查論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_c_distribute.jsp"><i class="fa fa-plus fa-2x"></i>分派審查論文計畫書</a>
                            </li>
                            <li>
                                <a  href="b_a_projects_list.jsp"><i class="fa fa-plus fa-2x"></i>論文計畫書審查名冊</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-refresh fa-3x"></i>師生審查意見往返</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_t_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 老師意見回覆</a></li>
                                <li><a  href="b_s_optioncycle.jsp"><i class="fa fa-plus fa-2x"></i> 學生意見回覆</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-list-alt fa-3x"></i>論文計畫書審查結果</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_result.jsp"><i class="fa fa-plus fa-2x"></i> 查詢審查結果</a></li>
                                <li><a  href="b_ac_finalall.jsp"><i class="fa fa-plus fa-2x"></i> 審查成績冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-edit fa-3x"></i>口試</a>
                            <ul class="nav nav-second-level">
                                <li><a  href="b_s_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 申請口試</a></li>
                                <li><a  href="b_t_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 查看口試申請書</a></li>
                                <li><a  href="b_a_firstoral.jsp"><i class="fa fa-plus fa-2x"></i> 口試名冊</a></li>
                            </ul>
                    </li>
                    <li>
                        <a  href="#"><i class="fa fa-plus-circle fa-3x"></i> 論文初稿及加分</a>
                        <ul class="nav nav-second-level">
                            
                            <li><a href="c_s_add_point.jsp"><i class="fa fa-plus fa-2x"></i> 加分</a></li>
                                <ul class="nav nav-third-level">
                                    <li><a href="c_t_person.jsp"><i class="fa fa-asterisk fa-2x"></i> 加分審核</a></li>
                                    <li><a href="c_s_add_end.jsp"><i class="fa fa-asterisk fa-2x"></i> 加分結果表</a></li>
                                </ul>    
                                <li><a href="c_s_oral1.jsp"><i class="fa fa-plus fa-2x"></i> 學位考試</a></li>
                                    <ul class="nav nav-third-level">
                                        <li><a href="c_t_recommend.jsp"><i class="fa fa-asterisk fa-2x"></i> 指導教授推薦書</a></li>
                                        <li><a href="c_t_oral_time.jsp"><i class="fa fa-asterisk fa-2x"></i>口試時程表</a></li>
                                        <li><a href="c_t_vote.jsp"><i class="fa fa-asterisk fa-2x"></i>學位論文考試投票單</a>
                                        <li><a href="c_a_oral_end.jsp"><i class="fa fa-asterisk fa-2x"></i> 口試申請匯總表</a></li>
                                        <li><a href="c_a_vote_end.jsp"><i class="fa fa-asterisk fa-2x"></i>投票結果表</a>
                                        <li><a href="c_a_oral4_end.jsp"><i class="fa fa-asterisk fa-2x"></i>論文題要匯總表</a>
                                        <li><a href="c_a_oral2_end.jsp"><i class="fa fa-asterisk fa-2x"></i>論文考試申請匯總表</a>
                                    </ul>
                        </ul>
                    </li>	
                    <li>
                        <a   href="#"><i class="fa fa-folder-open fa-3x"></i>口試及離校程序</a>
                    </li> 
                </ul>
            </div>
        </nav>
       </div>     
<!-- /. NAV SIDE -->
    <div class="container">
        <div class="row text-center  ">
            <div class="col-md-12">
                <br /><br />
                <h2> 帳號註冊</h2>
                 <br />
            </div>
        </div>
         <div class="row">
               </div>
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong> 請填入以下個人資料 </strong>  
                            </div>
                            <div class="panel-body">
                                <form action="savememo.jsp" method=get>
<br/>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="st_name" class="form-control" placeholder="中文姓名(st_name)" />
                                        </div>
                                         <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="first_name" class="form-control" placeholder="英文姓名(first_name)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="last_name" class="form-control" placeholder="英文姓名(last_name)" />
                                        </div>
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="st_id" class="form-control" placeholder="學號(帳號)(st_id)" />
                                        </div>
                                         <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <input type="text" name="st_password" class="form-control" placeholder="密碼(st_password)" />
                                        </div>
                                      <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <input type="password" name="st_password" class="form-control" placeholder="再次確認密碼(st_password)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text"  name="sex" class="form-control" placeholder="性別(sex)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="capacity" class="form-control" placeholder="全時/在職(capacity)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="payment" class="form-control" placeholder="自費/軍費(payment)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="grade" class="form-control" placeholder="年班(grade)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="office_tellphone" class="form-control" placeholder="辦公電話(office_tellphone)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text"  name="mobile_phone" class="form-control" placeholder="手機(mobile_phone)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text"  name="mail" class="form-control" placeholder="電子郵件(mail)" />
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text"  name="suspension" class="form-control" placeholder="是否休學(suspension)" />
                                        </div>
                                     
                                     <input type=submit name=SEND class="btn btn-success ">
                                    
                                    
                                    已註冊會員&nbsp;&nbsp;<a href="d_login.jsp" >登入</a>
                                    </form>
                              </div>
                           </div>
                        </div>
                    </div>
             
              
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
