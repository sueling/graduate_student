<%-- 
    Document   : d_file_download1
    Created on : 2015/11/8, 下午 04:38:23
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.util.*,java.io.*,java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String path = "C:/Users/lin/Desktop/stupid/web/report";
            String filename = "資訊管理學系碩士班論文指導規定.pdf";
            request.setCharacterEncoding("UTF-8");
            response.setContentType("application/octet-stream; charset=iso-8859-1");
            response.setHeader("Content-Disposition","attachment; filename=\""+ java.net.URLEncoder.encode(filename, "UTF-8") + "\"");
            File file = new File(path+filename);
            if(file.exists()){//檢驗檔案是否存在
                try{
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
