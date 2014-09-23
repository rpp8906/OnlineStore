<%@ include file="/WEB-INF/views/lib/include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html">

<html>
<head>

<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<title>Mi tienda.com</title>


</head>

<body>

	<div id="publicar" align="left">
		<a href="<c:url value="publish.htm"/>"> <fmt:message
				key="publicar" /></a>

	</div>

	<div id="ventas" align="center">
		<table border="1" style="width:15%">
			<tr>
				<th>Rentas</th>
			</tr>

			<tr>
				<td><a href="<c:url value="/view_dep_rent.htm"/>">Renta Departamentos</a></td>
			</tr>
			<tr>
				<td>Terrenos</td>
			</tr>
			<tr>
				<td>Casas</td>
			</tr>
		</table>

	</div>

</body>
</html>