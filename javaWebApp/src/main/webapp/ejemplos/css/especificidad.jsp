<%String titulo = "HelloWeb | especificidad";%>
   
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>

    <h1>Especificidad CSS</h1>

    <a href="index.jsp">Volver</a>

    <!-- Los estilos en linea tienen prioridad -->
    <p style="color:red">Parrafo</p>

    <style>
        p {
            color: aqua;
        }

        /* Sobreescribe al anterior por venir despues */
        p {
            color: blue;
        }

        code {
            color: red;
            background-color: seashell;
            font-family: monospace;
        }

        /*  Selecciona solo los parrafos con la clase especial no es descendente 
            solo se aplica al parrafo que tenga la clase especial
            */
        p.especial {
            color: blueviolet;
            background-color: #fff;
        }

        /* selector descendente */
        /* Los parrafos que esten dentro de otra etiqueta que tenga la clase container
            sobreescribiran los colores anteriores por el que definamos en esta clase
            y tambien sobreescribe al p.especial que estadefinido arriba
        */
        .container p {
            color: tomato;
        }
    </style>

    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laudantium accusantium veniam quibusdam est accusamus
        maxime. Officiis omnis neque quibusdam illum tenetur quia ullam reiciendis? Sunt quibusdam labore velit optio
        dicta.</p>
    <p>Suscipit explicabo maxime, dolor officia veniam possimus, voluptates ex quia, sint tempore corrupti id! Quibusdam
        totam magni molestiae odit asperiores quos laudantium nostrum deleniti animi. Autem commodi excepturi aperiam
        odit.</p>
    <p>Nemo ipsum ad facere dicta. Aliquid molestias cum minus, ad adipisci amet placeat totam debitis deleniti ratione!
        Sapiente commodi impedit omnis, quae, autem quo provident iusto, nam voluptatum similique nisi!</p>
    <p class="especial">Est eum sequi, rem nemo qui minima sapiente quo, molestiae voluptatibus vitae ducimus dolores.
        Magni, temporibus
        impedit ut, fuga autem ullam dicta ratione eos commodi sunt officia, laborum assumenda expedita.</p>
    <div class="container">
        <p>Recusandae inventore harum obcaecati vel. Dolores iusto aut incidunt, qui illum nobis sequi necessitatibus
            sunt
            dolorem saepe. Numquam aut, sunt, consequuntur maxime tempora ea assumenda fugiat facere qui accusamus at.
        </p>
        <p class="especial">Recusandae inventore harum obcaecati vel. Dolores iusto aut incidunt, qui illum nobis sequi
            necessitatibus
            sunt
            dolorem saepe. Numquam aut, sunt, consequuntur maxime tempora ea assumenda fugiat facere qui accusamus at.
        </p>
    </div>
 <%@include file="/includes/footer.jsp" %>