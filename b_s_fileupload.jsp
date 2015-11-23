<%-- 
    Document   : b_s_fileupload
    Created on : 2015/4/27, 下午 10:37:47
    Author     : Jill
--%>

<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.io.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@ page contentType="text/html; charset=UTF-8"%>
	<%@ page import="java.io.*"%>
	<%@ page import="org.apache.commons.fileupload.*"%>
	<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
	<%@ page import="org.apache.commons.fileupload.util.Streams"%>
	<%@ page import="org.apache.commons.io.FilenameUtils"%>
	<%DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(new File(this.getServletContext().getRealPath("/")+"upload"));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(3145728);
        List<FileItem> items = upload.parseRequest(request);
        Iterator<FileItem> iter = items.iterator();
        
        
        while(iter.hasNext()){
            FileItem item = iter.next();
            String fieldName = item.getFieldName();
            if(!item.isFormField()){
                File saveFile = null;
                InputStream input = null;
                OutputStream output = null;
                input = item.getInputStream();
                output = new FileOutputStream(new File(this.getServletContext().getRealPath("/")+"upload"+File.separator+"."+item.getName().split("\\.")[1]));
                byte data[] = new byte[512];
                int temp = 0;
                while((temp = input.read(data,0,512))!=-1){
                    output.write(data);
                }
                input.close();
                output.close();
            }else{
                String value = item.getString();
                %>
                number:<%=value%>
                <%
            }
        }
 
	%>
	<input type="button" name="prev" value="Go back to previous page" onclick="history.go(-1);"/>
- See more at: http://www.andowson.com/posts/list/30/197.page#sthash.yQgQctTI.dpuf
                %>
        <h1>Hello World!</h1>
    </body>
</html>
