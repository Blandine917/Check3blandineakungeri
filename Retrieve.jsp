<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name=request.getParameter("name");
String location=request.getParameter("loc");
String phone=request.getParameter("phone");
String Email=request.getParameter("EM");
String password=request.getParameter("password");
String message=request.getParameter("message");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "final";
String Userid = "root";

try
{
Class.forName(driver);
} catch (ClassNotFoundException x) {
x.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
	background: url(images/desi.jpeg);
	margin: 100;
	padding: 100;
	font-family: "Montserrat", sans-serif;
	color:blue;
	text-align:middle;
	
}
</style>
</head>
<body>
<h1>Data from database </h1>
<table border="1">
<tr>
<td>name</td>
<td>loc</td>
<td>phone</td>
<td>EM</td>
<td>password</td>
<td>message</td>
</tr>

<%
try{
connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","");
statement=connection.createStatement();
String sql ="select * from form";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("loc") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("EM") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("message") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>