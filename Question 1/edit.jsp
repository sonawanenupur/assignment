<%@page import="java.util.Iterator"%>
<%@page import="hello.Info"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Registration Form</h1>
<form action="update.jsp">
<table align="center">

<%
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session session1 = sf.openSession();
Transaction tx = session1.beginTransaction();
String fname=request.getParameter("First_Name");

String q="from Info where First_Name='"+fname+"'";
Query qry=session1.createQuery(q);
Iterator it=qry.iterate();

String email;
String firstname;
String contact;
String lastname;
String location;

while(it.hasNext())
{
	Info i=(Info)it.next();
	firstname=i.getFirstName();
	lastname=i.getLastName();
	email=i.getEmail();
	contact=i.getPhone();
	location=i.getLocation();
	



%>
<tr>
<td align="right">First Name:</td>
<td> <input type="text" name="firstname" value="<%=firstname %>" class="long" pattern="[a-z,A-Z]{3,20}" title="First Name must be containt atleast 3 charector" required/></td>

</tr>
<tr>
<td align="right">Last Name:</td>
<td> <input type="text" name="lastname" value="<%=lastname %>" class="long" pattern="[a-z,A-Z]{3,20}" title="First Name must be containt atleast 3 charector"required/></td>
</tr>
<tr>
<td align="right">E-mail:</td>
<td><input type="text" name="email" value="<%= email%>" required pattern="[^@]+@[^@]+\.[a-zA-Z]{3}" title="Please Enter Valid E-mail Address" required/></td>
</tr>
<tr>
<td align="right">Phone No:</td>
<td><input type="text"  size="3" value="+91"/>- <input type="text" name="contact" value="<%=contact %>" maxlength="10" required pattern="(\+?\d[- .]*){10}" title="Phone no Conteint must be 10 Digits " required/></td>
</tr>
<tr>
<td align="right">Location:</td>
<td> <input type="text" name="location" value="<%= location%>"/>
</tr>
<%} %>
<tr>
<td></td><td><input type="submit" value="Save">&nbsp;<input type="reset" value="Reset"></td>
</tr>
</table>
</form>

</body>
</html>