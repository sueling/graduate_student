<%-- 
    Document   : upload2
    Created on : 2014/12/9, 下午 11:38:29
    Author     : lin
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5">
        <title>upload</title>
    </head>
    <body>
        <%
            MultipartRequest theMultipartRequest = new MultipartRequest(request,"C:\\new\\",50*1024*1024);
            Enumeration theEnumeration = theMultipartRequest.getFileNames();
            int fileCount = 0;
            
            while(theEnumeration.hasMoreElements()){
                fileCount++ ;
                String fieldName = (String)theEnumeration.nextElement();
                String fileName = theMultipartRequest.getFilesystemName(fieldName);
                String contentType = theMultipartRequest.getContentType(fieldName);
                
                File theFile = theMultipartRequest.getFile(fieldName);
                
                out.println("name:"+fieldName+"<br>");
                out.println("name1:"+fileName+"<br>");
                out.println("type:"+contentType+"<br>");
                out.println("path:"+theFile.getAbsolutePath()+"<br>");
            }
            out.println("successful:"+fileCount);
        %>    
    </body>
</html>

