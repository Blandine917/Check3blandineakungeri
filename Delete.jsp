<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/final", "root", "");
Statement st=conn.createStatement();
out.print(name);
out.println("<br>");
int i=st.executeUpdate("DELETE FROM form WHERE name='"+name+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>