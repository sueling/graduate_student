<%-- 
    Document   : upload4
    Created on : 2015/9/22, 下午 03:32:50
    Author     : jill
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.io.File" %> 
<html> 
  <head> 
    <title> upload.jsp </title> 
  </head> 
  <body> 
    <% 
    //文件上?后，保存在d://upload 
    String path=application.getRealPath(request.getRequestURI());
    String dir=new File(path).getParent();
    String saveDirectory = "C:/Users/jill/Documents/NetBeansProjects/Beautiful/web/upload"; 
    
    //每?文件最大5m,最多3?文件    
  int maxPostSize = 3 * 5 * 1024 * 1024; 
    
    //response的???"gb2312",同?采用缺省的文件名?突解?策略,??上?   

MultipartRequest multi = new MultipartRequest(request, 
                                                  saveDirectory, 
                                                  maxPostSize, 
                                                  "UTF-8"); 
    //?出反?信息   
 java.util.Enumeration file = multi.getFileNames(); 
    
    while (file.hasMoreElements()) { 
        System.out.println("CCC"); 
        
        String name = (String)file.nextElement(); 
        
        File f = multi.getFile(name); 
        
        if(f != null) { 
            String fileName = multi.getFilesystemName(name); 
            
            String lastFileName = saveDirectory + "//" + fileName; 
            
            out.println("successful!!!!"); 
            out.println("<br>"); 
        } 
    }                                
%> 
  <a href="b_s_projects.jsp">回上傳論文計畫書</a>
  </body> 
</html> 

