
<%String titulo = "HelloWeb | Conversor";%>

<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navigation.jsp"%>

	<form action="convertir" method="post">
	
		<h1>Convertir de metros a millas</h1>
	
		<input type="text" name="metros" value="${metros}" placeholder="Escribe los metros"/>
		
		<input type="text" name="pies" value="${(resultado == null )? 0 : resultado }"/>
	
		<input type="submit" value="Convetir" />
	
	</form>
	
	<p>
		el resultado es:
		<%
		//recibir atributos del controlador
		float resultado = 0;
		if (request.getAttribute("resultado") != null) {
			resultado = (float)request.getAttribute("resultado");
			
		}
		out.print(resultado);
		%>
	</p>
	
	<!-- <p style="color:green;">Resultado de forma abreviada ${resultado}</p> -->
	
	<%
	//recibir atributos del controlador
	String mensaje = (String)request.getAttribute("mensaje");
	if (mensaje != null) {
	%>

	<p style="color:red;"><%=mensaje%></p>

	<% } %>



<%@include file="/includes/footer.jsp"%>