<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="gurucore"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="gurusql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Database JSP1</title>
</head>
<body>

<gurusql:setDataSource var="guru" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/GuruTest"
     user="gururoot"  password="guru"/>
     <gurucore:set var="guruid" value="2"/>
     <gurusql:update dataSource="${guru}" var="guruvar">
UPDATE guru_test SET emp_name='emp guru99'
  <gurusql:param value="${guruid}" />
</gurusql:update>
 

 
</body>
</html>