 <form action="login" method="post">
        <h1>Login</h1>

        <div class="imgcontainer">
            <img src="images/customer-login-icon-27.jpg" alt="Avatar" class="avatar">
        </div>

        <label for="nombre"><b>Username</b></label>
        <input type="text" placeholder="Introducir nombre de usuario" name="nombre" id="nombre" autofocus required
            pattern=".{3,11}">

        <label for="contrasena"><b>Password</b></label>
        <input type="password" placeholder="introducir la contrase�a" name="contrasena" id="contrasena" autofocus
            required pattern=".{3,11}">

        <br><br>

        <label for="idioma"><b>Idioma:</b></label>
        <select name="idioma" id="idioma">
            <option value="en">Ingl�s</option>
            <option value="es" selected>Espa�ol</option>
            <option value="fr">Franc�s</option>
        </select>
        <br><br>
        
        <%
		//recibir atributos del controlador
		String mensaje = (String)request.getAttribute("mensaje");
		if (mensaje != null) {
			%>
	
			<p style="color:red;"><%=mensaje%></p>
	
		 <% } %>

        <button type="submit">Login</button>
        <label>
            <input type="checkbox" checked="checked" name="recuerdame"> Recuerdame
        </label>
        <br>
        <br>
        <a class="cancelbtn" href="index.html">Volver</a>
        <a href="calculadora.jsp">Calculadora</a>
    </form>