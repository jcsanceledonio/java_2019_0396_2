 <%String titulo = "HelloWeb | posicionamiento";%>
   
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>
  <style>
        .box {
            display: inline-block;
            /* para que el bloque ocupe el borde que especifiquemos
            sin que se le sume los 2px de los bordes */
            box-sizing: border-box;
            width: 100px;
            height: 100px;

            border: 2px solid teal;
            background-color: royalblue;
            border-radius: 10px;

            color: #fff;
            font-size: 5em;
            text-align: center;
        }

        section {
            border: 1px solid rgb(131, 131, 131);
            background-color: ghostwhite;
            padding: 10px;
            margin-bottom: 50px;
            border-radius: 10px;

            -webkit-box-shadow: 8px 6px 6px -1px rgba(0, 0, 0, 0.27);
            -moz-box-shadow: 8px 6px 6px -1px rgba(0, 0, 0, 0.27);
            box-shadow: 8px 6px 6px -1px rgba(0, 0, 0, 0.27);
        }
    </style>

    <a href="index.jsp">Volver</a>

    <section>
        <h2>Relativo</h2>
        <p> variante del posicionamiento normal que consiste en posicionar una caja seg�n el posicionamiento normal y
            despu�s desplazarla respecto de su posici�n original. El desplazamiento de la caja se controla con las
            propiedades <code>top</code> ,
            <code>right</code>, <code>bottom</code> y <code>left</code>.</p>

        <h3>Ejemplo</h3>
        <div class="box"
            style="background-color: chartreuse; position: relative; left: 278px; bottom: 22px; z-index: 2;">1</div>
        <div class="box" style="z-index: 0;position: relative; top:-20px; left:20px; background-color: brown;">2</div>
        <div class="box" style="z-index: 1;position: relative;">3</div>
    </section>

    <section>
        <h2>Fixed</h2>
        <p>variante del posicionamiento absoluto que convierte una caja en un elemento inamovible, de forma que su
            posici�n en la pantalla siempre es la misma independientemente del resto de elementos e independientemente
            de si el usuario sube o baja la p�gina en la ventana del navegador. El desplazamiento se establece de la
            misma forma que en el posicionamiento absoluto, pero en este caso el elemento permanece inamovible en la
            pantalla.</p>
    </section>

    <section>
        <h2>Sticky - CSS3</h2>
        <p>pegajosa: Mantiene los elementos posicionados como "fijos" o "relativos" en funci�n de c�mo aparezcan en la
            ventana gr�fica. Como resultado, el elemento se "bloquea" cuando es necesario mientras se desplaza.</p>
    </section>

    <section>
        <h2>Absoluto</h2>
        <p>la posici�n de una caja se establece de forma absoluta respecto de su <strong>elemento contenedor</strong> y
            el resto de
            elementos de la p�gina ignoran la nueva posici�n del elemento. El desplazamiento de la caja tambi�n se
            controla con las propiedades <code>top</code>, <code>right</code>, <code>bottom</code> y <code>left</code>,
            pero su interpretaci�n es mucho m�s compleja, ya que
            el origen de coordenadas del desplazamiento depende del posicionamiento de su elemento contenedor.</p>


        <style>
            .contenedor {
                /* Acordarse de que el contenedor sea siempre relative */
                position: relative;
                /*  */
                text-align: center;
                overflow: hidden;

                width: 400px;
                height: 400px;
                margin: auto;
            }

            .absoluto {

                /* Pocisionamos de forma absolua sobrre el contenerdor */
                position: absolute;
                right: 10px;
                top: 10px;
                /*  */
                background-color: red;
                border-radius: 50%;
                padding: 10px;
                color: white;
            }

            .contenedor .texto {
                background-color: #0000005c;
                position: absolute;
                bottom: -110px;


            }

            .contenedor:hover .texto {
                bottom: 0;
                transition: all 1s ease-in-out;
                color: white;
            }

            .contenedor .texto h3 {
                text-transform: uppercase;
            }

            .contenedor .texto p {
                padding: 10px;
                text-align: justify;
            }
        </style>

        <div class="contenedor">
            <span class="absoluto">1</span>
            <img src="http://lorempixel.com/400/400" alt="Imagen aleatria">

            <div class="texto">
                <h3>Titulo</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id quisquam error optio provident corporis
                    sit
                    deleniti, accusantium illum vel cumque omnis molestias numquam sapiente maxime autem asperiores.
                    Illo,
                    iusto quia?</p>
            </div>
        </div>
    </section>
 <%@include file="/includes/footer.jsp" %>