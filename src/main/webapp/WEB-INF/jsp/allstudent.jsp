<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student</title>
</head>
<body>
<table align="center" border="2" width="100%">
<tr>
<th><a href="${pageContext.request.contextPath}/">Home</a></th>
<th><a href="${pageContext.request.contextPath}/insertpage">Insert</a></th>
<th><a href="${pageContext.request.contextPath}/students">All Student</a></th>
</tr>
</table>
<h1 align="center">ALL STUDENT</h1>
<table align="center"  border="2" cellpadding="3">
<tr>
<th>S.No.</th>
<th>NAME  </th>
<th>EMAIL  </th>
<th>NUMBER  </th>
<th>PASSWORD </th>
<th>EDIT </th>
<th>DELETE </th>
</tr>
<c:forEach var="l" items="${list}">
<tr>
<td>${l.id}</td>
<td>${l.name}  </td>
<td>${l.email}</td>
<td>${l.number}</td>
<td>${l.password}</td>
<td><a href="updatepage/${l.id }" >Edit</a></td>
<td><a href="delete/${l.id }" >Delete</a></td>
</tr>
</c:forEach>
</table>
<h4 align="center">bvrsoftwre.com</h4>
</body>
</html>