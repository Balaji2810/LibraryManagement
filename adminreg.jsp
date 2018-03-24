<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="css/style.css">
</head>

<body style="background:rgba(255,255,255,0.8)">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
//String user=request.getParameter("userid"); 
//session.putValue("userid",user); 
String pwd=request.getParameter("pass"); 
String fname=request.getParameter("fname"); 
//String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","MYSQL"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from admin where id='"+email+"'"); 
String msg;
if(rs.next()) 
{
	msg="User alreday Registered";
}
else
{
int i=st.executeUpdate("insert into admin values ('"+email+"','"+fname+"' ,'"+pwd+"')"); 
msg="New Admin details are Registered in the DataBase"; 
}

%>
 
  <div class="form" >

<h1><%=msg%></h1> 
<form action="adminpage.jsp">
<button type="submit" class="button"/>Back</button>
</form>
</div>
</body>
</html>