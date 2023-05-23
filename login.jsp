<%@page import="java.sql.*,java.util.*" %>
<%
String username= request.getParameter("username");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","");
Statement st=con.createStatement();
ResultSet a=st.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
try{
a.next();
if(a.getString("username").equals(username)&&a.getString("password").equals(password)){
%>
<%@ include file="login.html" %>
<%
response.sendRedirect("Admin.html");
}
else{
out.print("Invalid username or password");
}
}
catch(Exception e)
{
out.print("Invalid username or password");
}
%>
</body>
</html>