<%-- 
    Document   : download2
    Created on : 2014/12/3, 上午 10:50:52
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.io.*,java.net.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String path = "";
            String filename = "1.txt";
            filename = new String(filename.getBytes("ISO-8859-1"),"Big5");
   
            File file = new File(path+filename);
            if(file.exists()){
                response.setHeader("Content-Disposition","attachment; filename=\""  + URLEncoder.encode(filename, "UTF-8") + "\"");  
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
            }
            
        %> 
    </body>
</html>
