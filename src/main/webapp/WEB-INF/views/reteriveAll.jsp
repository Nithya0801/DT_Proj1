<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.*" %>
<%@page import="com.Model.*" %>

<%@include file="header.jsp" %>
<br>
<br>
<br>
<%
List<User> l=(List<User>)request.getSession().getAttribute("obj");
for(User u:l)
{
%>
<center>
<table border="2">
<tr>
<td><%=u.getName() %></td>

<td><%=u.getAddress() %></td>

<td><%=u.getCountry() %></td>

<td><%=u.getEmail() %></td>

<td><%=u.getPhone() %></td>
</tr>
</table>
<%} %>
</center>

<%@include file="footer.jsp" %>
</body>
</html>