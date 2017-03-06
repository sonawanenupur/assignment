<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="hello.Usermaster"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section class="top-nav-bar">
<section class="container-fluid container">
<section class="row-fluid">
<section class="span6">
<ul class="top-nav">
<li><a href="index.jsp" class="active">Home page</a></li>
<li><a href="grid-view.jsp">Online Store</a></li>
<li><a href="blog.jsp">About Us</a></li>

<li><a href="blog-detail.jsp">News</a></li>
<li><a href="contact.jsp">Contact Us</a></li>
</ul>
</section>

<section class="span6 e-commerce-list">
<ul>
<%
					Configuration cfg = new Configuration();
					cfg.configure("hibernate.cfg.xml");
					SessionFactory factory = cfg.buildSessionFactory();
					Session session1 = factory.openSession();
					Transaction tx = session1.beginTransaction();
					
					String q="from usermaster where user_id="+request.getParameter("user_id");
					Query qry=session1.createQuery(q);
					Iterator it=qry.iterate();
					
					int user_id=1;
					String username;
					while(it.hasNext()){
						Usermaster b1=(Usermaster)it.next();
						user_id=b1.getUserId();
						username=b1.getUsername();
					
					
					
					
				%>
<li>Welcome!: <%=username %>> </li> <%} %>>
</ul>
<div class="c-btn"> <a href="cart.jsp" class="cart-btn">Cart</a>
<div class="btn-group">
<button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">0 item(s) - Rs.0.00<span class="caret"></span></button>
<ul class="dropdown-menu">
<li><a href="#">Action</a></li>
<li><a href="#">Another action</a></li>
<li><a href="#">Something else here</a></li>
</ul>
</div>
</div>
</section>
</section>
</section>
</section>
 
<header id="main-header">
<section class="container-fluid container">
<section class="row-fluid">
<section class="span4">
<h1 id="logo"> <a href="index-2.jsp"><img src="images/logo.png"/></a> </h1>
</section>
<section class="span8">
<ul class="top-nav2">
<li><a href="checkout.jsp">My Account</a></li>
<li><a href="cart.jsp">My Cart</a></li>
<li><a href="checkout.jsp">Checkout</a></li>
<li><a href="order-recieved.jsp">Track Your Order</a></li>
</ul>
<div class="search-bar">
<input name="" type="text" value="search entire store here..."/>
<input name="" type="button" value="Serach"/>
</div>
</section>
</section>
</section>
 
<nav id="nav">
<div class="navbar navbar-inverse">
<div class="navbar-inner">
<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
<div class="nav-collapse collapse">
<ul class="nav">
<li> <a href="grid-view.jsp">Books</a> </li>

<li><a href="grid-view.jsp">Textbooks</a></li>
<li><a href="grid-view.jsp">News stand</a></li>


<li class="dropdown"> <a class="dropdown-toggle" href="grid-view.html" data-toggle="dropdown"><i class="icon-heart"></i> Features<b class="caret"></b> </a>
<ul class="dropdown-menu">
<li><a href="about-us.jsp">About Us</a></li>
<li><a href="blog.jsp">Blog</a></li>
<li><a href="blog-detail.jsp">Blog Detail</a></li>
<li><a href="grid-view.jsp">Product Grid View</a></li>
<li><a href="list-view.jsp">Product List View</a></li>
<li><a href="grid-view-without-side-bar.jsp">Product Grid View Without Side Bar</a></li>
<li><a href="shortcodes.jsp">Short Codes</a></li>
<li><a href="blog-detail.jsp">News</a></li>
<li><a href="contact.jsp">Contact Us</a></li>
</ul>
</li>

<li> <a href="grid-view.jsp">Gift Cards</a> </li>
<li><a href="grid-view.jsp">Deals & Offers</a></li>
</ul>
</div>
 
</div>
 
</div>
 
</nav>
 
</header>

</body>
</html>