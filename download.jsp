<%-- 
    Document   : download
    Created on : 2014/12/2, 下午 02:46:32
    Author     : lin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "java.io.*,java.net.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download</title>
    </head>
    <body>
        <%!
            private static final int BUFSIZE = 2048;
            private void doDownload(HttpServletRequest request,HttpServletResponse response,
                                      String filename,String original_filename)
            throws IOException{
                File f = new File(filename);
                int length = 0;
                ServletOutputStream op = response.getOutputStream();
                ServletContext context = getServletConfig().getServletContext();
                String mimetype = context.getMimeType( filename );
                
                response.setContentType((mimetype != null) ? mimetype:"application/octet-stream");
                response.setContentLength((int)f.length());
                response.setHeader("Content-Disposition","attachment; filename=\""+ original_filename + "\"");
                
                byte[] bbuf = new byte[BUFSIZE];
                DataInputStream in = new DataInputStream(new FileInputStream(f));
                
                while((in != null) && ((length = in.read(bbuf)) != -1)){
                    op.write(bbuf,0,length);
                }
                
                in.close();
                op.flush();
                op.close();
            }        
        %>
        <%
            String original_filename = request.getParameter("file");
            boolean error = false;
            if(original_filename != null && !"".equals(original_filename) && !original_filename.startsWith("../")){
                String filename = application.getRealPath("/")+"WEB-INF/export/"+original_filename;
                File file = new File(filename);
                if(file.exists()){
                    doDownload(request,response,filename,original_filename);
                    boolean deleted = file.delete();
                    System.out.println("File" + original_filename + "deleted" +deleted);
                }
                else{
                    error = true;
                }
            }
            else{
                error = true;
            }
            if(error){
                response.setContentType("text/html;charset = UTF-8");
                out.println("File not found:" + original_filename);
            }
        %>    
    </body>
</html>
