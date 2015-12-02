<%-- 
    Document   : b_t_projects_download
    Created on : 2015/12/2, 上午 11:22:00
    Author     : jill
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import="java.util.*,java.io.*,java.net.URLEncoder" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
    </head>
    <body>
        <%
            String path = "C:/Users/jill/Documents/NetBeansProjects/Beautiful/web/upload/";
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");
            
            String str = new String();
            str = request.getParameter("name");
            String sql = "SELECT st_id from proposal WHERE proposal.st_id = '"+str+"'";
            PreparedStatement smt = con.prepareStatement(sql);
           ResultSet rs = smt.executeQuery();
           rs.next();
            String filename = rs.getString("st_id")+".pdf";
            request.setCharacterEncoding("UTF-8");
            filename = new String(filename.getBytes("ISO-8859-1"),"UTF-8");
            
            File file = new File(path+filename);
            if(file.exists()){//檢驗檔案是否存在
                try{
                    response.setHeader("Content-Disposition","attachment; filename=\""+ java.net.URLEncoder.encode(filename, "UTF-8") + "\"");
                    OutputStream output = response.getOutputStream();
                    InputStream in = new FileInputStream(file);
                    byte[] b = new byte[2048];
                    int len;
           
                    while((len = in.read(b))>0){
                        output.write(b,0,len);
                    }
                    in.close();
                    output.flush();
                    output.close();
                    out.clear();
                    out = pageContext.pushBody();
                }catch(Exception ex){
                    out.println("Exception : "+ex.toString());
                    out.println("<br/>");
                }
            }else{
                out.println(filename+" : 此檔案不存在");
                out.println("<br/>");
            }   
        %> 
    </body>
</html>
