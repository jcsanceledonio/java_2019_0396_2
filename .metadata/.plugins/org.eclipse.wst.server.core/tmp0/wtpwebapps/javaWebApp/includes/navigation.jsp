<header class="nav-wrapper">

    <nav class="topnav" id="myTopnav">
        <a href="index.jsp" class="active">Inicio</a>
        <div class="dropdown">
            <button class="dropbtn">CSS
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="ejemplos/css/animaciones.jsp">Animaciones</a>
                <a href="ejemplos/css/basico.jsp">Basico</a>
                <a href="ejemplos/css/especificidad.jsp">Especificidad</a>
                <a href="ejemplos/css/avanzado.jsp">Avanzado</a>
                <a href="ejemplos/css/flexbox.jsp">flexbox</a>
                <a href="ejemplos/css/media-querys.jsp">media querys</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">HTML
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="ejemplos/html/box-model.jsp">Visualización</a>
                <a href="ejemplos/html/posicionamiento.jsp">Posicionamiento</a>
                <a href="ejemplos/html/formulario.jsp">Formularios</a>
                <a href="login.jsp">Login</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">JavaScript
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="ejemplos/js/game.jsp">Arkanoid</a>
                <a href="ejemplos/js/datatable.jsp">Datatables</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Utilidades
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="https://caniuse.com/">caniuse</a>
            </div>
        </div>
        <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </nav>

    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>

</header>
<main>