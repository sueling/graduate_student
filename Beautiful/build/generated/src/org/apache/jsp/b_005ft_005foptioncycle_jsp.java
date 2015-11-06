package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class b_005ft_005foptioncycle_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!-- MORRIS CHART STYLES-->\n");
      out.write("    <link href=\"assets/js/morris/morris-0.4.3.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- CUSTOM STYLES-->\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- GOOGLE FONTS-->\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.print( session.getAttribute("user_id"));
      out.write("\n");
      out.write("    ");

           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT * FROM suggestion_title WHERE suggestion_title.title = '"+str+"'";
            String sql2 = "SELECT * FROM suggestion WHERE suggestion.title = '"+str+"'";
            PreparedStatement smt = con.prepareStatement(sql);
            PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs = smt.executeQuery();
           ResultSet rs2 = smt2.executeQuery();
           rs.next();
           String st_id = rs.getString(3);
            
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
      out.write("                <a class=\"navbar-brand\" href=\"#\">研究生學程計畫</a> \n");
      out.write("            </div>\n");
      out.write("  <div style=\"color: white;\n");
      out.write("padding: 15px 50px 5px 50px;\n");
      out.write("float: right;\n");
      out.write("font-size: 16px;\"><a href=\"d_changepassword.jsp\" class=\"btn btn-danger square-btn-adjust\">修改密碼</a><a href=\"d_login.jsp\" class=\"btn btn-danger square-btn-adjust\">登出</a></div>\n");
      out.write("        </nav>   \n");
      out.write("           <!-- /. NAV TOP -->\n");
      out.write("<nav class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("            <div class=\"sidebar-collapse\">\n");
      out.write("                <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("\t\t\t\t<li class=\"text-center\">\n");
      out.write("                    <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\"/>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                    <li><a   href=\"d_t_personal.jsp\"><i class=\"fa fa-user fa-3x\"></i> 基本資料</a></li>\n");
      out.write("                    <li><a   href=\"d_rule.jsp\"><i class=\"fa fa-book fa-3x\"></i> 學程相關規定</a></li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-file-archive-o fa-3x\"></i> 指導教授同意書</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li><a  href=\"a_t_choose.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 查看指導教授同意書</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                        \n");
      out.write("\t\t     <li>\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-file-text fa-3x\"></i>論文計畫書</a>\n");
      out.write("                    \n");
      out.write("                        <ul class=\"nav nav-second-level\">\n");
      out.write("                            <li>\n");
      out.write("                                <a  href=\"b_t_projects_saw.jsp\"><i class=\"fa fa-plus fa-2x\"></i>審查論文計畫書</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-refresh fa-3x\"></i>師生審查意見往返</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li><a  href=\"b_t_optioncycle1.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 老師意見回覆</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-edit fa-3x\"></i>論文計劃書口試</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li><a  href=\"b_t_firstoral.jsp\"><i class=\"fa fa-plus fa-2x\"></i> 查看口試申請書</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-plus-circle fa-3x\"></i>論文加分</a>\n");
      out.write("                        <ul class=\"nav nav-second-level\">\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a  href=\"#\"><i class=\"fa fa-check-square fa-3x\"></i>學位考試</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                \n");
      out.write("                            </ul>\n");
      out.write("\n");
      out.write("                    </li>        \n");
      out.write("                    <li>\n");
      out.write("                        <a   href=\"#\"><i class=\"fa fa-folder-open fa-3x\"></i>口試及離校程序</a>\n");
      out.write("                            <ul class=\"nav nav-second-level\" >\n");
      out.write("                            </ul>\n");
      out.write("                    </li> \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>     \n");
      out.write("<!-- /. NAV SIDE -->\n");
      out.write("        <div id=\"page-wrapper\" >\n");
      out.write("            <ul class=\"breadcrumb\">\n");
      out.write("            <li><a href=\"d_t_index.jsp\">首頁</a> <span class=\"divider\">/</span></li>\n");
      out.write("            <li>論文計畫書/</li>\n");
      out.write("            <li><a href=\"b_t_optioncycle1.jsp\">審查意見</a> <span class=\"divider\"></span></li>\n");
      out.write("            <li><a href=\"b_t_optioncycle.jsp\">師生往返意見回覆</a> <span class=\"divider\"></span></li>\n");
      out.write("            </ul>\n");
      out.write("            <div id=\"page-inner\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                     <h2>師生往返意見回覆 </h2>  \n");
      out.write("                     <div class=\"table-responsive\">\n");
      out.write("                         <form method=\"post\" action=\"test4.jsp\"> \n");
      out.write("                    <table>\n");
      out.write("                        <td>發言老師編號:&nbsp;&nbsp;");
      out.print(id);
      out.write("</td>\n");
      out.write("                          <tr><td>學生學號:&nbsp;&nbsp;");
      out.print(st_id);
      out.write("</td></tr>\n");
      out.write("                          <tr><td>題目:&nbsp;&nbsp;");
      out.print(str);
      out.write("</td></tr>\n");
      out.write("                          <br>\n");
      out.write("                      </table>\n");
      out.write("                    <table BORDER WIDTH=\"80%\" color=\"red\" >\n");
      out.write("                        <tbody>\n");
      out.write("                         ");

                              while(rs2.next()){
                                  String suggestion = rs2.getString("suggestion");
                                  String time = rs2.getString("time");
                              
      out.write("\n");
      out.write("                        <tr><td>&nbsp;&nbsp;訊息:");
      out.print(suggestion);
      out.write("</td></tr>\n");
      out.write("                        <tr><td>&nbsp;&nbsp;時間:");
      out.print(time);
      out.write("</td></tr>\n");
      out.write("                        <br>\n");
      out.write("                        ");

                              }
                        
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                        <br>\n");
      out.write("                       \n");
      out.write("                        <br>\n");
      out.write("                    </table>\n");
      out.write("                        <br>\n");
      out.write("                         \n");
      out.write("                            <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\n");
      out.write("                       <tbody>\n");
      out.write("                         <tr>\n");
      out.write("                           <td>老師意見回覆</td>\n");
      out.write("                         </tr>\n");
      out.write("                           \n");
      out.write("                         <tr>\n");
      out.write("                           <td><textarea rows=\"0\" cols=\"52\" name=\"suggestion\">\n");
      out.write("                               </textarea>\n");
      out.write("                            <p><form>\n");
      out.write("                                    <input type=\"submit\"  name=\"Insert\"  value=\"送出\" size=100>\n");
      out.write("                               </form>\n");
      out.write("                            </p>\n");
      out.write("                           </td>\n");
      out.write("                         </tr>\n");
      out.write("                                         \n");
      out.write("                       </tbody>\n");
      out.write("                     </table>\n");
      out.write("                         </form>\n");
      out.write("                        <form name=form1 action=\"noshowoption(1).jsp?name=");
      out.print(str);
      out.write("\">\n");
      out.write("<input type=\"submit\" name=\"besaw\" value=\"確認審查意見\"> ** 確認後會將此審查意見予以刪除\n");
      out.write("    </form>             \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                            \n");
      out.write("                               \n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("                   \n");
      out.write("                                </div>\n");
      out.write("                            \n");
      out.write("                    </div>\n");
      out.write("                                    \n");
      out.write("            \n");
      out.write("                \n");
      out.write("             <!-- /. PAGE INNER  -->\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("         <!-- /. PAGE WRAPPER  -->\n");
      out.write("        </div>\n");
      out.write("        ");

            rs.close();
            rs2.close();
            con.close();
          
      out.write("\n");
      out.write("     <!-- /. WRAPPER  -->\n");
      out.write("    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\n");
      out.write("    <!-- JQUERY SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- METISMENU SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/jquery.metisMenu.js\"></script>\n");
      out.write("      <!-- CUSTOM SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("</html>");
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
