<%
	String titulo = "HelloWeb | resumen";
%>

<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navigation.jsp"%>

<h1>Prueba peticiones servidor</h1>

<%
	//recibir atributos del controlador

	String nombre = (String) request.getAttribute("nombre");
	String password = (String) request.getAttribute("password");
	String userAgent = (String) request.getAttribute("userAgent");
	String http = (String) request.getAttribute("http");
%>

<p><strong>Nombre de usuario: </strong><%=nombre%></p>
<p><strong>Contraseña: </strong><%=password%></p>
<p><strong>Datos del cliente: </strong><%=userAgent%></p>
<p><strong>versión HTTP: </strong><%=http%></p>

<a class="cancelbtn" href="introduccion-jsp.jsp">Volver</a>

<%@include file="/includes/footer.jsp"%>