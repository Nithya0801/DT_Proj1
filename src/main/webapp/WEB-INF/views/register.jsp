<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function validate()
{
var name=document.myform.un.value;

var pwd=document.myform.pwd.value;

var cpwd=document.myform.cpwd.value;

var x=document.myform.mail.value; 

var dob=document.myform.dob.value;
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  

var pattern =/^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/;


if(name==null|| name=="")
	alert("Name field can't be empty");
	
else if(pwd.length<6)
	{
	alert("Password must contain atleast 6 characters");
	}
else if(pwd!=cpwd)
	alert("Password and confirm Password should match");
else if(atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
	{


	  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
	   
	}
else if(dob == null || dob == "" || !pattern.test(dob))
alert("Enter DD/MM/YYYY format!!!!");
else
	window.location="store"
}




</script>
<%@include file="header.jsp" %>
<br>
<br>
<br>
<center>
<form name="myform" action="store"  onsubmit="return validate()">

NAME                 : <input type="text" name="un" required><br><br>

ADDRESS           : <input type="text" name="addr" required><br><br>

PHONE                : <input type="text" name="phone" required><br><br>

GMAIL                : <input type="text" name="mail" required><br><br>

COUNTRY					 : <input type="text" name="country" required><br><br>

<input type="submit" value="REGISTER">


</form>


</center>
<%@include file="footer.jsp" %>
</body>
</html>