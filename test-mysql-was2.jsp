<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<html>
<body>
<h1>Through WAS-2 Server with MySQL Database</h1>
<% 
      Connection conn = null;
     
      try { 
              String Url = "jdbc:mysql://Database-ARN:3306/Database-Name?useSSL=false";
              String Id = "awsuser";
              String Pass = "awspassword";
               
              out.println("WAS2-Database Connecting Started.<br>");

              Class.forName("com.mysql.cj.jdbc.Driver");
              out.println("WAS2-Database Connecting Waiting~<br>");

              conn = DriverManager.getConnection(Url, Id, Pass);              
              out.println("WAS2-Database Connect Success!<br>");
     } catch (Exception e) {
               e.printStackTrace();
     }
%>

<br><br>
<%
Date now = new Date();
%>
<%=now %><br>

<%
SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
String today = sf.format(now);
%>
<%=today %><br>

<%
sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
today = sf.format(now);
%>
<%=today %><br>

<% 
sf = new SimpleDateFormat("yyyy년MM월dd일 E요일 a hh:mm:ss");
today = sf.format(now);
%>
<%=today %><br>

</body>
</html>