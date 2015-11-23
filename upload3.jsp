<%-- 
    Document   : upload3
    Created on : 2015/9/22, 下午 03:31:33
    Author     : jill
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="Big5"%>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=Big5"> 
<title>upload html</title> 
</head>  

<body> 
<!-- enctype的值很重要,upload.jsp??理上?的jsp--> 
<form name="form1"  method="post" enctype="multipart/form-data" 
action="upload4.jsp"> 
<p> 
  <input name="file1" type="file"> 
</p> 
<p> 
  <input name="file2" type="file"> 
</p> 
<p>  <input name="file3" type="file"> 
</p> 
<p> 
  <input type="submit" name="Submit" value="上傳"> 
</p> 
</form > 

</body> 
</html> 
