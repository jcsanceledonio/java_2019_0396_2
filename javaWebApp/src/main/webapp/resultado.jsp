<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Resultado</h1>

<%
	//recibir atributos del controlador
	String mensaje = (String)request.getAttribute("mensaje");
	String operacion = (String)request.getAttribute("operacion");
	String op1 = (String)request.getAttribute("op1");
	String op2 = (String)request.getAttribute("op2");
	float resultado = (float)request.getAttribute("resultado");
	
	if (mensaje != null) {
%>

	<p style="color:red;"><%=mensaje%></p>

<% }else { %>

	<p>El resultado es de sumar <%=op1%> mas <%=op2%> es igual a <%=resultado%></p>
	

	<p>la operacion <%=operacion%></p>
<% } // final del if %>	
<a href="calculadora.jsp">Volver a Calcular</a>

</body>
</html>