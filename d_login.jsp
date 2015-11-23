<%-- 
    Document   : login1
    Created on : 2014/12/24, 上午 10:40:41
    Author     : lin
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>登入</title>
	<!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
         <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
            <!-- CUSTOM STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" />
         <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    </head>
    <body>
        
        <div class="container">
            <div class="row text-center ">
                <div class="col-md-12">
                    <br /><br />
                    <h2> 登入</h2>

                    <h5>( Login yourself to get access )</h5>
                    <br />
                </div>
            </div>
            <div class="row ">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>   Enter Details To Login </strong>  
               
                        </div>
                        <div class="panel-body">
                            <form role="form" action="d_login_check.jsp" method="post">
                                <br />
                                <div class="form-group input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-tag"  ></i>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Your Username " name="user_id" />
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                        <input type="password" class="form-control"  placeholder="Your Password" name="pwd" />
                                </div>
                                <div class="form-group">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" /> 記住我
                                    </label>
                                    <span class="pull-right">
                                        <a href="#" >忘記密碼? </a> 
                                    </span>
                                </div>
                                <div class="form-action text-left">     
                                    <input name="button" type="submit" value="登入"> 
                                </div>
                            </form>
                        </div>
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

