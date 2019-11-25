<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String titulo = "HelloWeb | inicio";
%>

<%@include file="includes/header.jsp"%>
<div class="parallax">
	<h1>Prueba Técnica Juan Carlos</h1>
	<h2>HTML, CSS, JAVASCRIPT</h2>
</div>
<%@include file="includes/navigation.jsp"%>
<main>

	<table>
		<caption>Alumnos de clase Ipartek</caption>

		<tr>
			<td colspan="2">Ander(Profesor)</td>
		</tr>
		<tr>
			<td>Mikel</td>
			<td>Joseba</td>
		</tr>
		<tr>
			<td>Nadie</td>
			<td>Raul</td>
		</tr>
		<tr>
			<td>Erlantz</td>
			<td>Cristian</td>
		</tr>
		<tr>
			<td>Ana</td>
			<td>Alejandro</td>
		</tr>
		<tr>
			<td>Maria</td>
			<td>Juan Carlos</td>
		</tr>
		<tr>
			<td>Kiryl</td>
			<td>Iñigo</td>
		</tr>
		<tr>
			<td>nadie</td>
			<td>Endika</td>
		</tr>
		<tr>
			<td>Iker</td>
			<td>Aitor</td>
		</tr>

	</table>
	<a target="_blank" href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table">Ejemplo
		w3schools</a>

	<h3>
		Voluntario <span id="nombre"> </span>
	</h3>
	<button onclick="buscarVoluntario()">ï¿½Quien lee?</button>

	<i class="fas fa-eye fa-2x"></i>

	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
		Voluptatibus itaque voluptatem blanditiis eum nam minus, iste omnis
		alias voluptate recusandae dolorem dolores accusamus animi doloremque
		sapiente eius atque, quia consequatur?</p>


	<a id="btnUp" href="#"><i class="material-icons">
			keyboard_arrow_up </i></i></a>
</main>

<%@include file="includes/footer.jsp"%>