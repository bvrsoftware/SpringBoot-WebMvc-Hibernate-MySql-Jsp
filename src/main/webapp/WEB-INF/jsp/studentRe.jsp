<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Or Update</title>
</head>
<body>
<table align="center" border="2" width="100%">
<tr>
<th><a href="${pageContext.request.contextPath}/">Home</a></th>
<th><a href="${pageContext.request.contextPath}/insertpage">Insert</a></th>
<th><a href="${pageContext.request.contextPath}/students">All Student</a></th>
</tr>
</table>
<br>
<h1 align="center">CRUD InserOrUpdate</h1>
<br>
<f:form modelAttribute="st" action="${pageContext.request.contextPath}/insert" method="post">
<f:hidden path="id"/>
<table align="center">
<tr>
<th>NAME :</th><td><f:input path="name" /></td><th>EMAIL :</th><td><f:input  path="email"/></td>
<th>NUMBER :</th><td><f:input path="number" /></td><th>PASSWORD :</th><td><f:password path="password"/></td>
<td><input type="submit" value="SAVE"/></td>
</tr>
</table>
</f:form>
<h4 align="center" style="margin-top: 200px">bvrsoftwre.com</h4>
</body>
</html>