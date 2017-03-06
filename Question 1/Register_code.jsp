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
	<%
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session1 = sf.openSession();
		Transaction tx = session1.beginTransaction();

		String email = request.getParameter("email");
		String firstname = request.getParameter("firstname");
		

		String contact = request.getParameter("contact");
		String lastname = request.getParameter("lastname");
		String location = request.getParameter("location");
	
		Info i=new Info();
		i.setFirstName(firstname);
		i.setLastName(lastname);
		i.setEmail(email);
		i.setPhone(contact);
		i.setLocation(location);
		
		session1.save(i);
		tx.commit();
		
		response.sendRedirect("view.jsp");
   %>
</body>
</html>