<%String titulo = "HelloWeb | Introduccion JSP";%>

<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navigation.jsp"%>

<form action="hello2" method="post">

        <h1>Login</h1>
        
         <a href="hello2?nombre=pepe&password=12">No permiso</a>
         <a href="hello2?nombre=tetera&password=1234">tetera</a>




        <label for="nombre"><b>Username</b></label>
        <input type="text" placeholder="Introducir nombre de usuario" name="nombre" id="nombre" autofocus required
            pattern=".{3,11}">

        <label for="contrasena"><b>Password</b></label>
        <input type="password" placeholder="introducir la contraseña" name="password" id="password" autofocus
            required pattern=".{3,11}">

        <br><br>

        <button type="submit">Login</button>
        
    </form>


<%@include file="/includes/footer.jsp"%>