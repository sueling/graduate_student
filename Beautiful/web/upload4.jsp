<%-- 
    Document   : upload4
    Created on : 2015/9/22, �U�� 03:32:50
    Author     : jill
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="Big5"%>
<%@ page import="java.util.Enumeration"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.io.File" %> 
<html> 
  <head> 
    <title> upload.jsp </title> 
  </head> 
  <body> 
    <% 
    //���W?�Z�A�O�s�bd://upload 
    String saveDirectory = "d://upload"; 
    
    //�C?���̤j5m,�̦h3?���    
  int maxPostSize = 3 * 5 * 1024 * 1024; 
    
    //response��???"gb2312",�P?���ίʬ٪����W?���?����,??�W?   

MultipartRequest multi = new MultipartRequest(request, 
                                                  saveDirectory, 
                                                  maxPostSize, 
                                                  "Big5"); 
    //?�X��?�H��   
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
  <a href="b_s_projects.jsp">�^�W�ǽפ�p�e��</a>
  </body> 
</html> 

