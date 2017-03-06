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
<form action="Register_code.jsp">
<table align="center">

<tr>
<td align="right">Username:</td>
<td><input type="text" name="username" class="long" pattern="[a-z,A-Z]{3,20}" title="Username must be 3 charectore Long" required/></td>
</tr>
<tr>
<td align="right">Password:</td>
<td><input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password must be containt atleast 1 Uppercase & 1 Digits " required/></td>
</tr>
<tr>
<td align="right">Conform Password:</td>
<td><input type="password" name="cpassword" id="cpassword"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onblur="return check()" title="Password must be containt atleast 1 Uppercase & 1 Digits " required/></td>

</tr>
<script language='javascript' type='text/javascript'>
function check() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("cpassword").value;
    if (pass1 != pass2) {
        alert("Passwords Do not match");
        
    }
    
}
</script>
<tr>
<td align="right">First Name:</td>
<td> <input type="text" name="firstname" class="long" pattern="[a-z,A-Z]{3,20}" title="First Name must be containt atleast 3 charector" required/></td>

</tr>
<tr>
<td align="right">Last Name:</td>
<td> <input type="text" name="lastname" class="long" pattern="[a-z,A-Z]{3,20}" title="First Name must be containt atleast 3 charector"required/></td>
</tr>
<tr>
<td align="right">E-mail:</td>
<td><input type="text" name="email" required pattern="[^@]+@[^@]+\.[a-zA-Z]{3}" title="Please Enter Valid E-mail Address" required/></td>
</tr>
<tr>
<td align="right">Phone No:</td>
<td><input type="text" size="3" value="+91"/>- <input type="text" name="contact" maxlength="10" required pattern="(\+?\d[- .]*){10}" title="Phone no Conteint must be 10 Digits " required/></td>
</tr>
<tr>
<td align="right">Location:</td>
<td> <input type="text" name="location"/>
</tr>
<tr>
<td></td><td><input type="submit" value="Save">&nbsp;<input type="reset" value="Reset"></td>
</tr>
</table>
</form>

</body>
</html>