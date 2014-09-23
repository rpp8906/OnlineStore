<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/lib/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${publications}" var="publication">
    <tr id="${publication.idPublication}">
        <td>${publication.idPublication}</td>
        <td>
    	<a href="<c:url value="/publicationDetails/${publication.idPublication}.htm"/>">
    	${publication.title} </a></td>
        <td>${publication.publicationDate}</td>
       
    </tr><br>
</c:forEach>


</body>
</html>