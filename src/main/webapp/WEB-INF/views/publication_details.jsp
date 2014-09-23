<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${publication.title}</h1>

<h4> Here images</h4>

<h4>Precio por mes: ${publication.priceMontly} </h4>
<h5>Precio por año: ${publication.priceYearly} </h5>

	<table>
		<tr>
			<td>Estado ${publication.state}</td>
			<td>Disponible Desde ${publication.available}</td>
			<td>Numero Habitaciones: ${publication.roomsNumber}</td>
		</tr>
		<tr>
		<td>Estacionamiento: ${publication.parking}</td>
		<td>Tamaño M2: ${publication.sizeDepa}</td>
		<td>Estancia Minima (meses): ${publication.minimunStay}</td>
		</tr>
	</table>
	
<h4>Descripcion:</h4>
<p>${publication.content}</p>

</body>
</html>