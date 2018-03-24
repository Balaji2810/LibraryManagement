<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:scroll;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("e"); 
session.setAttribute("userid",userid); 
String pwd=request.getParameter("p"); 
session.setAttribute("pwd",pwd); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","MYSQL"); 
Statement st= con.createStatement(); 
String msg,msg2,msg3;

ResultSet rs=st.executeQuery("select * from member where id='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(3).equals(pwd)) 
{ 
msg="welcome, "+rs.getString(2);
msg3="\nHow was your day"; 
msg2="Log Out";
} 
else 
{ 
msg="Invalid password try again"; 
msg2="Go Back";
msg3="check your password";
} 
} 
else	 
{	
msg="Invalid UserId try again";
msg2="Go Back";
msg3="check your UserId address";
}
%>

  <div class="form" >


<h1><%=msg%> <br><%=msg3%></h1>




<%if(msg2.equals("Log Out"))
{
%>
<br>
<form action="update.jsp">
<button type="submit" class="button" >Search Book</button>
</form>
<br>
<form action="delete.jsp">
<button type="submit" class="button">My Books</button>
</form><br>
<form action="delete.jsp">
<button type="submit" class="button">Renewal</button>
</form><br>
<%

}
else {
	
%>

<br><br><br><br><br><br><br><br>
<%}%>
<form action="log.jsp">
<button type="submit" class="button" ><%=msg2%></button>
</form>

</div>
</body>
</html>