package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class d_005fc_005findex_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("      <meta charset=\"utf-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <title>研究生學程計畫</title>\r\n");
      out.write("\t<!-- BOOTSTRAP STYLES-->\r\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- FONTAWESOME STYLES-->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- MORRIS CHART STYLES-->\r\n");
      out.write("    <link href=\"assets/js/morris/morris-0.4.3.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- CUSTOM STYLES-->\r\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- GOOGLE FONTS-->\r\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">研究生學程計畫</a> \r\n");
      out.write("            </div>\r\n");
      out.write("  <div style=\"color: white;\r\n");
      out.write("padding: 15px 50px 5px 50px;\r\n");
      out.write("float: right;\r\n");
      out.write("font-size: 15px;\"><a href=\"d_registeration.jsp\" class=\"btn btn-danger square-btn-adjust\">修改密碼</a><a href=\"d_login.jsp\" class=\"btn btn-danger square-btn-adjust\">登出</a> </div>\r\n");
      out.write("        </nav> \r\n");
      out.write("    \r\n");
      out.write("          <!-- /. NAV TOP  -->\r\n");
      out.write("               <nav class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("            <div class=\"sidebar-collapse\">\r\n");
      out.write("                <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("\t\t\t\t<li class=\"text-center\">\r\n");
      out.write("                    <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\"/>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("                    <li><a   href=\"d_c_personal.jsp\"><i class=\"fa fa-user fa-3x\"></i> 基本資料</a></li>\r\n");
      out.write("                    <li><a   href=\"d_rule.jsp\"><i class=\"fa fa-book fa-3x\"></i> 學程相關規定</a></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-file-archive-o fa-3x\"></i> 指導教授同意書</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"a_c_choose.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 檢視指導教授同意書</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                        \r\n");
      out.write("\t\t     <li>\r\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-file-text fa-3x\"></i>論文計畫書</a>\r\n");
      out.write("                        <ul class=\"nav nav-second-level\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a  href=\"b_c_distribute.jsp\"><i class=\"fa fa-plus fa-2x\"></i>分派審查論文計畫書</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-list-alt fa-3x\"></i>論文計畫書審查結果</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"b_c_finalall.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 審查成績冊</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-plus-circle fa-3x\"></i>論文加分</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                               <li><a href=\"c_c_examine1.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 加分審核</a></li> \r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-folder-open fa-3x\"></i>口試及離校程序</a>\r\n");
      out.write("                    </li> \r\n");
      out.write("                </ul>\r\n");
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("        </nav>     \r\n");
      out.write("        <!-- /. NAV SIDE  -->\r\n");
      out.write("        <div id=\"page-wrapper\" >\r\n");
      out.write("              <ul class=\"breadcrumb\">\r\n");
      out.write("                  <li class=\"active\">首頁</li>\r\n");
      out.write("             </ul> \r\n");
      out.write("            <div id=\"page-inner\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                     <!--<h2>指導教授同意書</h2>   \r\n");
      out.write("                       <h5>某某,您好！</h5>        -->       \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /. ROW  -->\r\n");
      out.write("        </div>\r\n");
      out.write("                <!-- /. PAGE INNER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\r\n");
      out.write("    <!-- JQUERY SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\r\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- METISMENU SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/jquery.metisMenu.js\"></script>\r\n");
      out.write("     <!-- MORRIS CHART SCRIPTS -->\r\n");
      out.write("     <script src=\"assets/js/morris/raphael-2.1.0.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/morris/morris.js\"></script>\r\n");
      out.write("      <!-- CUSTOM SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
