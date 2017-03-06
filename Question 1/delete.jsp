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
<%
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session session1 = sf.openSession();
Transaction tx = session1.beginTransaction();

String fname=request.getParameter("First_Name");




Info i=(Info)session1.get(Info.class, fname);
session1.delete(i);
out.println("<script language='javascript'> alert('Record has been Deleted Sucsessfully');window.location='view.jsp';</script>");
tx.commit();

%>
</body>
</html>