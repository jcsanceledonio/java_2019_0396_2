<%String titulo = "HelloWeb | flexbox";%>

<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>

<h1>FlexBox</h1>

<a href="index.html">Volver</a>

<style>
    /* estilos para maquetar flexbox */

    .container {
        border: 5px solid black;
        width: 80%;
        margin: auto;
        /* flexbox */
        display: flex;
        /* Por defecto */
        flex-direction: row;
        /* Por defecto acomoda todos los hijos no desborda*/
        flex-wrap: nowrap;
        /* Quitar el width de los hijos */
        justify-content: center;

    }

    .container div {
        border: 5px solid teal;
        background-color: orange;
        box-sizing: border-box;
        /* width: 40%; */
        margin: 5px;
        text-align: center;
        min-height: 80px;
        /* flexbox */

    }
</style>

<section>
    <ul>
        <li><a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/">Guia de Flexbox</a></li>
        <li><a href="https://flexboxfroggy.com/#es">juego de flexbox</a></li>
        <li><a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/">Maquetar con flexbox</a>
        </li>
    </ul>

    <p>Flex es una nueva forma de <code>display</code> de CSS3, para que las cajas no sean <code>inline</code> o
        <code>block</code> , se
        comportaran de una forma mas fexible</p>
    <p>Sirve para distribuir los elemenyos contenidos (hijos) en una etiqueta (contenedor) con
        <code>display:flex</code></p>
</section>


<div class="container">
    <div>hijo1</div>
    <div>hijo2</div>
    <div>hijo3</div>
    <div>hijo4</div>
    <div>hijo5</div>
    <div>hijo6</div>
</div>


<%@include file="/includes/footer.jsp" %>