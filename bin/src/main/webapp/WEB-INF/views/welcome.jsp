<%@ include file="/WEB-INF/views/lib/include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html">

<html>
<head><title>Online Store</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">

</head>

<body>
This is the first Page.
<c:out value="${model}"></c:out>

  <br>
    <a href="<c:url value="admin.htm"/>">
    <fmt:message key="myAdmin"/></a>
    <br>

</body>
</html>