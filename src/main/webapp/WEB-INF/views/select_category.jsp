<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/lib/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/style.css" rel="stylesheet" type="text/css">

<title>Publicaciones</title>
</head>
<body>
<div align="left">
<h2>Elige tu seccion a publicar</h2><br>
<form:form method="post" modelAttribute="publishType" action="define_typePublish.htm">  
<form:radiobutton path="typePublishing" value="renta"/>Renta Departamentos 
<br><form:radiobutton path="typePublishing" value="venta"/>Venta Departamentos
<br><input type="submit" value="Continuar">
</form:form>
</div>
</body>
</html>