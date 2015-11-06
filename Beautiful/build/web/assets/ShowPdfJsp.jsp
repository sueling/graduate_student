<%-- 
    Document   : ShowPdfJsp
    Created on : 2015/10/5, 下午 02:41:32
    Author     : lin
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map" %>
<%@page import="net.sf.jasperreports.engine.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            //int id = Integer.parseInt(request.getParameter("emplyid"));
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            
                File reportFile = new File(application.getRealPath("//assets//js//report1.jasper"));
                //Map parameters = new HashMap();
                //parameters.put("employeeid",id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(),null,conn);
                
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
            }
            catch (Exception ex){
                out.println("Error :  "+ex.getMessage());
            }
        %>    
    </body>
</html>
