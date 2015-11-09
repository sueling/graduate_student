package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class d_005fc_005fpersonal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("      <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <title>研究生學程計畫</title>\n");
      out.write("\t<!-- BOOTSTRAP STYLES-->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- FONTAWESOME STYLES-->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- MORRIS CHART STYLES-->\n");
      out.write("    <link href=\"assets/js/morris/morris-0.4.3.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- CUSTOM STYLES-->\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- GOOGLE FONTS-->\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("     ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT * FROM teacher WHERE teacher.te_id = '"+id+"'";
            PreparedStatement smt = con.prepareStatement(sql);
          ResultSet rs = smt.executeQuery();
          rs.next();
            
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("        <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">研究生學程計畫</a> \n");
      out.write("                \n");
      out.write("  <div style=\"color: white;\n");
      out.write("padding: 15px 50px 5px 50px;\n");
      out.write("float: right;\n");
      out.write("font-size: 15px;\">\n");
      out.write("      </div>\n");
      out.write("            </div> <div style=\"color: white;\n");
      out.write("padding: 15px 50px 5px 50px;\n");
      out.write("float: right;\n");
      out.write("font-size: 16px;\"><a href=\"d_registeration.jsp\" class=\"btn btn-danger square-btn-adjust\">修改密碼</a><a href=\"b_login.jsp\" class=\"btn btn-danger square-btn-adjust\">登出</a></div>\n");
      out.write("        </nav> \n");
      out.write("         <nav class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("            <div class=\"sidebar-collapse\">\n");
      out.write("                <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("\t\t\t\t<li class=\"text-center\">\n");
      out.write("                    <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\"/>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                    <li><a   href=\"d_newest.jsp\"><i class=\"fa fa-user fa-3x\"></i> 基本資料</a></li>\n");
      out.write("                    <li><a   href=\"d_rule.jsp\"><i class=\"fa fa-book fa-3x\"></i> 學程相關規定</a></li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-file-archive-o fa-3x\"></i> 指導教授同意書</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li><a  href=\"a_c_choose.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 檢視指導教授同意書</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                        \n");
      out.write("\t\t     <li>\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-file-text fa-3x\"></i>論文計畫書</a>\n");
      out.write("                        <ul class=\"nav nav-second-level\">\n");
      out.write("                            <li>\n");
      out.write("                                <a  href=\"b_c_distribute.jsp\"><i class=\"fa fa-plus fa-2x\"></i>分派審查論文計畫書</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-list-alt fa-3x\"></i>論文計畫書審查結果</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li><a  href=\"b_c_finalall.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 審查成績冊</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-plus-circle fa-3x\"></i>論文加分</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                               <li><a href=\"c_c_examine1.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 加分審核</a></li> \n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-folder-open fa-3x\"></i>口試及離校程序</a>\n");
      out.write("                    </li> \n");
      out.write("                </ul>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </nav>     \n");
      out.write("        \n");
      out.write("        <div id=\"page-wrapper\" >\n");
      out.write("              <ul class=\"breadcrumb\">\n");
      out.write("                  <li><a href=\"#\">首頁</a> <span class=\"divider\">/</span></li>\n");
      out.write("                <li><a href=\"#\">基本資料</a> <span class=\"divider\">/</span></li>\n");
      out.write("                <li class=\"active\">Data</li>\n");
      out.write("             </ul> \n");
      out.write("            <div id=\"page-inner\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                     <h2>基本資料</h2>   \n");
      out.write("                       <h5>某某,您好！</h5>\n");
      out.write("                                    \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                 <!-- /. ROW  -->\n");
      out.write("         <!--   Kitchen Sink -->\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>老師ID</th>\n");
      out.write("                                            <th>中文姓名</th>\n");
      out.write("                                            <th>英文姓名</th>\n");
      out.write("                                            <th>身分</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(7));
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>現職單位</th>\n");
      out.write("                                            <th>職稱</th>\n");
      out.write("                                            <th>學歷</th>\n");
      out.write("                                            <th>經歷</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>辦公電話</th>\n");
      out.write("                                            <th>手機</th>\n");
      out.write("                                            <th>電子郵件</th>\n");
      out.write("                                            <th>研究生積分</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(rs.getString(10));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(11));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(12));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(13));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                     <!-- End  Kitchen Sink -->\n");
      out.write("                </div>\n");
      out.write("                    <!-- /. ROW  -->\n");
      out.write("        </div>\n");
      out.write("                <!-- /. PAGE INNER  -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /. PAGE WRAPPER  -->\n");
      out.write("    ");

            rs.close();
            con.close();
          
      out.write("\n");
      out.write("    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\n");
      out.write("    <!-- JQUERY SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- METISMENU SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/jquery.metisMenu.js\"></script>\n");
      out.write("     <!-- MORRIS CHART SCRIPTS -->\n");
      out.write("     <script src=\"assets/js/morris/raphael-2.1.0.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/morris/morris.js\"></script>\n");
      out.write("      <!-- CUSTOM SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
