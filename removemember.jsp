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
ResultSet rs=st.executeQuery("select * from member ");
%>
 <script>
 function del()
 {
	 if(window.confirm("Are you sure you want to Remove This Member??"))
	 {
		 <%String del = request.getParameter("id");%>
		<%out.print(del);%> 
	 }
 else
 {}
 }
 
 
 </script>
  <div class="form" >

<h1><Members List></h1> 
<table border="1" color="white" align="center"style="color:white">
<tr style="font-size:25px">
<th >Member ID</th>
<th>Member Name</th>
</tr>
<%
while(rs.next())
{%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>


	<%
}%>
</table>


<form action=del()>
<input type="text" id="del" name="id" placeholder="Enter Member ID to Remove">
<button type="submit" class="button"/>Remove</button>

</form>
</div>
</body>
</html>