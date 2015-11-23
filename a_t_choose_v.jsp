<%-- 
    Document   : a_t_choose_v
    Created on : 2015/11/16, 下午 02:18:54
    Author     : 凌芳慈
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<%=session.getAttribute("user_id")%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate student","root","1234");//連結資料庫
    request.setCharacterEncoding("UTF-8");
    String id = (String)session.getAttribute("user_id");
    
%>