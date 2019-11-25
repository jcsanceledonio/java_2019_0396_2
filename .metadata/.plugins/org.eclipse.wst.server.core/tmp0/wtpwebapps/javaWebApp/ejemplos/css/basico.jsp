<%String titulo = "HelloWeb | Basico";%>
   
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>

    <h1>Basico CSS</h1>

    <a href="index.jsp">Volver</a>

    <style>
        p {
            color: blue;
        }

        /* selector descendente */
        .container p span {
            background: black;
        }

        /* selector descendente afecta a todas las etiquetas que integren la clase especial dentro de un parrafo*/
        p .especial {
            font-size: 2em;
            font-weight: 600;
        }

        /* Selecciona solo los parrafos con la clase especial no es descendente 
            solo se aplica al parrafo que tenga la clase especial
            */
        p.especial {
            color: blueviolet;
            background-color: #fff;
        }
    </style>

    <div class="container">
        <p> <span>esto es Span</span> selector descendente para los parrafos que estan dentro de
            <code>div.container</code></p>
    </div>

    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem quisquam corrupti sequi praesentium illo assumenda
        consequatur, ea molestiae. Ad repellendus sunt animi quis laborum aperiam nostrum voluptatem commodi quam
        blanditiis.</p>
    <p>Facilis perspiciatis provident voluptates quaerat dolorum odit deserunt similique consectetur quasi officia
        officiis, debitis ex, possimus impedit in, praesentium porro voluptatem eos repudiandae quae ducimus. In
        recusandae provident veritatis minima.</p>
    <p>Est consequuntur cupiditate sit deleniti sed dicta facilis veniam minus suscipit fugiat exercitationem quod ipsam
        architecto possimus totam sint, cum illum dignissimos nobis aperiam laboriosam. Itaque ab quasi quas atque.</p>
    <p>A in itaque delectus facilis maiores incidunt animi, vel repellendus, facere vero ullam, quisquam repellat nam
        quia corrupti illo architecto ab aliquid nulla amet voluptatum impedit quaerat! Porro, dolorum! Accusamus.</p>
    <p class="especial"> onsequuntur <span class="especial"> especial</span>voluptas recusandae, libero tempore sapiente
        fugit minima aliquam vitae nobis.</p>


 <%@include file="/includes/footer.jsp" %>