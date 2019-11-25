<%String titulo = "HelloWeb | formulario";%>
   
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>
 <style>
        body {
            max-width: 1024px;
            margin: auto;
        }

        code {
            color: maroon;
        }

        form {
            border: 1px solid grey;
            padding: 20px;
        }
    </style>

    <h1>Formulario</h1>

    <a href="index.jsp">Volver</a>

    <p>Usar siempre etiqueta <code>form</code> junto con boton de submit.</p>
    <p>Atributo <code>action</code> sirve para indicar el nombre del controlador en el servidor </p>
    <p>El atributo <code>name</code> de un <code>input</code> sirve para especificar el nombre del parametro a enviar al
        servidor</p>
    <form action="#" method="post">

        <fieldset>
            <legend>Datos personales</legend>
            <br>

            <label for="nombre">Nombre*:</label>
            <input type="text" name="nombre" id="nombre" autofocus required pattern=".{3,11}"
                placeholder="minimo 3 letras maximo 11">

            <br><br>

            <label for="contrasena">Contrase�a*:</label>
            <input type="password" name="contrasena" id="contrasena" autofocus required pattern=".{3,11}"
                placeholder="minimo 3 digitos">

            <button onclick="verTexto()">Ver</button>

            <script>
                function verTexto() {
                    /* Para que no haga un submit el boton de mostrar contrase�a */
                    event.preventDefault();
                    let iContrasena = document.getElementById('contrasena');

                    if (iContrasena.type == "text") {
                        iContrasena.type = "password";
                        /* Accede al contenido de la etiqueta */
                        event.target.innerHTML = 'Ver';
                    } else {
                        iContrasena.type = "text";
                        event.target.innerHTML = 'Ocultar';
                    }
                }
            </script>

            <br><br>

            <label for="edad">Edad:</label>
            <input type="number" name="edad" id="edad" required min="0" max="99" step="1"
                placeholder="numero entre el 0 y el 99">

            <br><br>

            <label for="sexo">Sexo:</label>
            <select name="sexo" id="sexo">
                <option value="h">Hombre</option>
                <option value="m">Mujer</option>
                <option value="e" selected>Enjendro</option>
            </select>
            <br><br>

        </fieldset>

        <br>

        <label for="situacion">Situaci�n actual:</label><br>
        <input type="radio" name="situacion" id="situacion" value="0"> Trabajando <br>
        <input type="radio" name="situacion" id="situacion" value="1"> desempleado

        <br><br>

        <label for="deportes">Deportes:</label> <br>
        <input type="checkbox" name="deportes" id="deportes" value="1"> Surf <br>
        <input type="checkbox" checked name="deportes" id="deportes" value="2"> Futbol <br>
        <input type="checkbox" name="deportes" id="deportes" value="3"> Petanca <br>
        <input type="checkbox" name="deportes" id="deportes" value="4"> Basket

        <br><br>

        <label for="observaciones">Observaciones</label><br>
        <textarea name="observaciones" id="observaciones" cols="50" rows="10"
            placeholder="Tu opinion nos importa"></textarea>

        <br><br>
        <input type="submit" value="Enviar">
    </form>
    
 <%@include file="/includes/footer.jsp" %>