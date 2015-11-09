package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class b_005fs_005fprojects_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=Big5");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=Big5\"> \r\n");
      out.write("    <title>研究生學程計畫</title>\r\n");
      out.write("\t<!-- BOOTSTRAP STYLES-->\r\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- FONTAWESOME STYLES-->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <!-- MORRIS CHART STYLES-->\r\n");
      out.write("    <link href=\"assets/js/morris/morris-0.4.3.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- CUSTOM STYLES-->\r\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("     <!-- GOOGLE FONTS-->\r\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      out.print( session.getAttribute("user_id"));
      out.write("\r\n");
      out.write("    ");
      Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT student.st_id,student.grade,student.st_name FROM student WHERE student.st_id = '"+id+"'";
            String sql2 = "SELECT proposal.pro_name_chinese,proposal.pro_name_english,proposal.pro_num,proposal.st_id FROM proposal WHERE proposal.st_id = '"+id+"'";
            PreparedStatement smt = con.prepareStatement(sql);
            PreparedStatement smt2 = con.prepareStatement(sql2);
          ResultSet rs = smt.executeQuery();
          ResultSet rs2 = smt2.executeQuery();
          rs.next();
            
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">研究生學程計畫</a> \r\n");
      out.write("            </div>\r\n");
      out.write("  <div style=\"color: white;\r\n");
      out.write("padding: 15px 50px 5px 50px;\r\n");
      out.write("float: right;\r\n");
      out.write("font-size: 16px;\"><a href=\"d_changepassword.jsp\" class=\"btn btn-danger square-btn-adjust\">修改密碼</a><a href=\"d_login.jsp\" class=\"btn btn-danger square-btn-adjust\">登出</a></div>\r\n");
      out.write("        </nav>   \r\n");
      out.write("           <!-- /. NAV TOP -->\r\n");
      out.write("<nav class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("            <div class=\"sidebar-collapse\">\r\n");
      out.write("                <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("\t\t\t\t<li class=\"text-center\">\r\n");
      out.write("                    <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\"/>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("                    <li><a   href=\"d_personal.jsp\"><i class=\"fa fa-user fa-3x\"></i> 基本資料</a></li>\r\n");
      out.write("                    <li><a   href=\"d_rule.jsp\"><i class=\"fa fa-book fa-3x\"></i> 學程相關規定</a></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-file-archive-o fa-3x\"></i> 指導教授同意書</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"a_s_choose.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 選擇指導教授</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>    \r\n");
      out.write("\t\t    <li>\r\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-file-text fa-3x\"></i>論文計畫書</a>\r\n");
      out.write("                        <ul class=\"nav nav-second-level\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a  href=\"b_s_projects.jsp\"><i class=\"fa fa-plus fa-2x\"></i>上傳論文計畫書</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-refresh fa-3x\"></i>師生審查意見往返</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"b_s_optioncycle1.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 學生意見回覆</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-list-alt fa-3x\"></i>論文計畫書審查結果</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"b_s_result.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 查詢審查結果</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-edit fa-3x\"></i>論文計劃書口試</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a  href=\"b_s_firstoral.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 申請口試</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-plus-circle fa-3x\"></i>論文加分</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a href=\"c_s_add_point.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 加分</a></li>\r\n");
      out.write("                            </ul>    \r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-check-square fa-3x\"></i>學位考試</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                <li><a href=\"c_s_oral1.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 學位考試</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li>        \r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-folder-open fa-3x\"></i>口試及離校程序</a>\r\n");
      out.write("                            <ul class=\"nav nav-second-level\" >  \r\n");
      out.write("                            </ul>\r\n");
      out.write("                    </li> \r\n");
      out.write("                </ul>\r\n");
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("        </nav>      \r\n");
      out.write("<!-- /. NAV SIDE -->\r\n");
      out.write("        <div id=\"page-wrapper\" >\r\n");
      out.write("             <ul class=\"breadcrumb\">\r\n");
      out.write("            <li><a href=\"d_s_index.jsp\">首頁</a> <span class=\"divider\">/</span></li>\r\n");
      out.write("            <li>論文計畫書/</li>\r\n");
      out.write("            <li><a href=\"b_s_projects.jsp\">上傳論文計畫書</a> <span class=\"divider\"></span></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <div id=\"page-inner\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-12\">\r\n");
      out.write("                     <h2>上傳論文計畫書(Step 1 填寫論文計畫書題目) </h2>  \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                <form method=\"post\" action=\"b_s_projects_action.jsp\">  \r\n");
      out.write("                <p><font　face=\"標楷體\"　color=\"#cc33ff\"　size=\"7\">學生學號 : ");
      out.print(id);
      out.write("</font></p>\r\n");
      out.write("                <p><font　face=\"標楷體\"　color=\"#cc33ff\"　size=\"7\">期別 : ");
      out.print(rs.getString(2));
      out.write("</font></p>\r\n");
      out.write("                <p><font　face=\"標楷體\"　color=\"#cc33ff\"　size=\"7\">姓名 : ");
      out.print(rs.getString(3));
      out.write("</font></p>\r\n");
      out.write("        \r\n");
      out.write("                <p>請輸入論文計畫書題目(中文)必填: <input type=\"text\" name=\"pro_name_chinese\" size=\"20\"></p>\r\n");
      out.write("                <p>請輸入論文計畫書題目(英文): <input type=\"text\" name=\"pro_name_english\" size=\"20\"></p>\r\n");
      out.write("                <input name=\"Submit\" type=\"submit\" value=\"送出\">\r\n");
      out.write("                 </form> \r\n");
      out.write("   \r\n");
      out.write("                </div>\r\n");
      out.write("    </div>\r\n");
      out.write("             <!-- /. PAGE INNER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("         <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("        </div>\r\n");
      out.write("         ");
             
         rs.close(); 
         con.close();
          
      out.write("\r\n");
      out.write("     <!-- /. WRAPPER  -->\r\n");
      out.write("    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\r\n");
      out.write("    <!-- JQUERY SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\r\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- METISMENU SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/jquery.metisMenu.js\"></script>\r\n");
      out.write("      <!-- CUSTOM SCRIPTS -->\r\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("     ");
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
