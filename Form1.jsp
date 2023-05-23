<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form1</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*" %>
<%
String name=request.getParameter("name");
String loc=request.getParameter("loc");
String phone=request.getParameter("phone");
String EM=request.getParameter("EM");
String password=request.getParameter("password");
String message=request.getParameter("message");

out.print("your registration is save successfully");
out.print("<br>");
out.print("Your user_name: "+name);
out.print("<br>");
out.print("Your location is: "+loc);
out.print("<br>");
out.print("Your contact: "+phone);
out.print("<br>");
out.print("Your Email: "+EM);
out.print("<br>");
out.print("Your password is: "+password);
out.print("<br>");
out.print("Your order is: "+message);
out.print("<br>");

try
{ if(request.getParameter("f")!=null)

{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","");
	Statement st=con.createStatement();
	String sql1="insert into form (name,loc,phone,EM,password,message) values('"+name+"','"+loc+"','"+phone+"','"+EM+"','"+password+"','"+message+"')";
	int p=st.executeUpdate(sql1);
	out.print(+p+" "+"row affected");
	
	
}
}
catch(Exception y)
{
	out.print(y);
	y.printStackTrace();
}

%>

</body>
</html>