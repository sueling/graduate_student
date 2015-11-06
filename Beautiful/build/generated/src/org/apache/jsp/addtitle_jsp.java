package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addtitle_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("  \n");
      out.write("  ");

           Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            String id = (String)session.getAttribute("user_id");
            String sql = "SELECT * FROM suggestion"; 
            String sql2 = "SELECT * FROM suggestion_title WHERE suggestion_title.te_id = '"+id+"'";
            PreparedStatement smt2 = con.prepareStatement(sql2);
           ResultSet rs2 = smt2.executeQuery();
           PreparedStatement smt = con.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
           rs.last();
           rs2.last();

           
        request.setCharacterEncoding("UTF-8");
        String suggestion=request.getParameter("suggestion");
        String te_id=(String)session.getAttribute("user_id");
        String st_id=request.getParameter("st_id");
        String title=request.getParameter("title");
        int num2= Integer.parseInt(rs.getString("suggestion_num"));
        num2++;
        int suggestionnum=num2;
        int num= Integer.parseInt(rs2.getString("title_num"));
        num++;
        int titlenum=num;
        
	sql = "insert into suggestion (suggestion,title,suggestion_num) values ('"+suggestion+"','"+title+"','"+suggestionnum+"')";
        sql2 = "insert into suggestion_title (te_id,st_id,title_num) values ('"+te_id+"','"+st_id+"','"+titlenum+"')";
            int result = smt.executeUpdate(sql); 
            int result2 = smt.executeUpdate(sql2); 
            if(request.getParameter("suggestion")!=null){
                response.sendRedirect("http://localhost:8080/Beautiful/b_t_optioncycle1.jsp");
            }
            smt.close();
            con.close();
          
      out.write('\n');
      out.write('\n');
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
