<%String titulo = "HelloWeb | flexbox";%>

<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>

<style>
    /* tablet */
    @media screen and (max-width: 768px) and (min-width: 425px) {
        section {
            background-color: rgb(238, 37, 221);
        }

        h1 {
            color: rgb(150, 255, 80);
        }

    }

    /* movil */
    @media screen and (max-width: 425px) {
        section {
            background-color: blueviolet;
        }

        h1 {
            color: coral;
        }


    }
</style>


<h1>Media query</h1>

<a href="index.jsp">Volver</a>

<section>
    <p>Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo
        utilizando características del medio como ancho, alto y color. Se entiende como un módulo CSS3 que permite
        adaptar la representación del contenido a características del dispositivo. Añadido en CSS3, las media
        queries dejan que la presentación del contenido se adapte a un rango específico de dispositivos de salida
        sin tener que cambiar el contenido en sí.</p>
</section>





<%@include file="/includes/footer.jsp" %>