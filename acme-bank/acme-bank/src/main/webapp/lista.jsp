<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Usuários</title>
</head>
<body>
<div align="center">

<table style=" background-repeat:no-repeat; width:450px;margin:20px;">
<tr>
<td style="height:40px; width:40px; margin:0;"><b>ID</b></td>
<td style="height:40px; width:40px; margin:0;"><b>Name</b></td>
<td style="height:40px; width:40px; margin:0;"><b>Email</b></td>
<td style="height:40px; width:40px; margin:0;"><b>Phone</b></td>
</tr>

<c:forEach var="client" items="${clients}">

<tr>
<td>${client.id}</td>
<td>${client.name}</td>
<td>${client.email}</td>
<td>${client.phone}</td>
</tr>

</c:forEach>
</table>

<a href="add_client.jsp"><button type="button">Voltar</button></a>
</div>

</body>
</html>