<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/lib/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link href="resources/css/style.css" rel="stylesheet" type="text/css">

</head>
<body>

	<form:form method="post" modelAttribute="loadData"
		action="submit_publish_form.htm">


		<fieldset style="margin-bottom: 1.5em;">
			<legend>Datos Contacto</legend>
			<div align="justify">
				<span style="color: blue"><label for="emailLabel">Email</label></span>
				<br>
				<form:input path="email" />
				<br> <span style="color: blue"><label for="numTelefono">Num.
						Telefono</label></span> <br>
				<form:input path="phone" />
			</div>
		</fieldset>

			<fieldset>
			<legend>Publicación</legend>
			<label for="namePublication">Titulo de la Publicación</label> <br>
			<form:input path="title" />
			<br> <label for="statePublication">Estado</label> <br>
			<form:select path="state">
				<form:option value="Puebla" />
			</form:select>
			<br> <label for="postalCode">Codigo Postal</label> <br>
			<form:input path="postalCode" />
			<br> <label for="postalCode">Descripción de la
				Publicación</label> <br>
			<form:textarea path="content" rows="10" cols="100" />

		</fieldset>
		<br>

		<table style="width: 80%">
			<tr>
				<td><label for="precio">Precio Mes: </label></td>
				<td><form:input path="priceMontly" /></td>
				<td><label for="precio">Precio Año: </label></td>
				<td><form:input path="priceYearly" /></td>

			</tr>

			<tr>
				<td><label for="disponible">Disponible Desde:</label></td>
				<td><form:input path="available" type="date" /></td>
				<td><label for="estancia">Estancia Minima (mes):</label></td>

				<td><form:select path="minimunStay">
						<option>N/A</option>
						<c:forEach var="i" begin="1" end="12">
							<option>
								<c:out value="${i}" />
							</option>
						</c:forEach>
					</form:select></td>
				<td><label for="noHabitaciones">Numero Habitaciones:</label></td>
				<td><form:select path="roomsNumber">
						<c:forEach var="i" begin="1" end="9">
							<option>
								<c:out value="${i}" />
							</option>
						</c:forEach>
					</form:select></td>
			</tr>

			<tr>
				<td><label for="estacionamiento">Estacionamiento:</label></td>
				<td><form:select path="parking">
						<option>No</option>
						<option>Si</option>
					</form:select></td>
				<td><label for="metros">Metros Cuadrados:</label></td>
				<td><form:input path="sizeDepa" /></td>
			</tr>
		</table>

		<input type="submit" value="Continuar">

	</form:form>




</body>
</html>