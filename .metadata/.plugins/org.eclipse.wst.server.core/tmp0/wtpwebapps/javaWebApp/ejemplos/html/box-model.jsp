<%String titulo = "HelloWeb | box-model";%>
   
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/navigation.jsp"%>
    <style>
        body {
           
        }

        span {
            border: 3px dotted red;
            padding: 5px;
        }

        p {

            padding: 5px;
        }

        p.prueba {
            color: teal;
            border: 5px solid green;
            margin: 10px;
            /* padding: 20px;  */
            padding: 20px 40px;
        }

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

        .box-texto {
            display: inline-block;
            width: 100px;
            height: 100px;
            border: 3px solid blueviolet;
        }

        section {
        	margin: 0px 80px 0px 80px; 
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

    <h1>Visualización</h1>

    <section>
        <h2>Toda etiqueta de HTML tiene una estructura de caja</h2>
        <h2>Display</h2>
        <a href="index.jsp">Volver</a>

        <p class="prueba">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias earum accusantium labore
            voluptatem modi nemo eos
            quasi, consequatur rem porro ipsa cumque dignissimos minima repudiandae, incidunt, eligendi quas magnam
            voluptatum?</p>

        <h3>Elementos en linea o bloque</h3>
        <p><code>display</code>Es el atributo para gestionar si es linea o bloque (existen mas displays ej flex)</p>
        <p>*trick: usar inspector para verlo</p>
        <dl>
            <dt>block</dt>
            <dd>elemento que ocupa todo el ancho del elemento padre</dd>

            <dt>inline</dt>
            <dd>elemento que ocupa todo lo que tenga su contenido</dd>

            <dt>inline-block</dt>
            <dd>Es una mezcla entre las dos</dd>

        </dl>

        <p> <span> Lorem ipsum dolor </span> Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta tenetur
            fuga
            corrupti, dignissimos molestias sit
            consectetur ad, quod reprehenderit unde porro nam odit recusandae similique eum animi vero voluptatem
            deserunt.
        </p>

        <div class="box">1</div>
        <div class="box">2</div>
    </section>

    <section>
        <h2>Visibility</h2>
        <p>Existen dos formas de ocultar elementos de html</p>
        <!-- Se oculta pero respeta el espacio -->
        <p>Usando <code>visibility</code></p>
        <div class="box">1</div>
        <div class="box" style="visibility:hidden">2</div>
        <div class="box">3</div>

        <!-- Se oculta y no ocupa espacio -->
        <p>Usando <code>dislay:none</code></p>
        <div class="box">1</div>
        <div class="box" style="display:none">2</div>
        <div class="box">3</div>
    </section>

    <section>
        <h2>Overflow</h2>
        <p> Como se muestra los elementos cuando no entran en el contenedor padre
            <code>[ visible | hidden | scroll | auto ]</code> </p>
        <p>Tambien se puede usar <code>overflow-x</code> y <code>ovyrflow-y</code></p>
        <div class="box-texto" style="overflow: hidden;">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt laudantium ipsam facere explicabo in
                adipisci sed autem aliquid aspernatur magni neque, dolorem maiores! Quos praesentium dolorem inventore
                tenetur dolorum nam!</p>
        </div>
        <div class="box-texto" style="overflow: scroll;">
            <p>Optio mollitia impedit dolore odio quisquam nisi perferendis autem provident aspernatur sit, voluptates
                inventore et quia repellendus assumenda nesciunt officia voluptatem, harum est saepe pariatur
                consequatur! Ea eum quos veniam.</p>
        </div>
        <div class="box-texto" style="overflow: auto;">
            <p>Cumque modi qui suscipit at autem perferendis ullam tempore cum, culpa asperiores. Pariatur numquam
                provident velit facere quo vitae! Accusamus pariatur quaerat officia molestias ad fugit natus et
                dignissimos tempore!</p>
        </div>
        <div class="box-texto" style="overflow: visible;">
            <p>Eos fugit laboriosam aut delectus, officiis corporis. Officiis, molestiae laborum culpa quis impedit
                minima eligendi fugit, unde nemo quae facere! Cumque laborum alias possimus, voluptas qui iste saepe ad
                eveniet.</p>
        </div>

    </section>

    <section>
        <h2>Z-index</h2>
        <p>Se encarga de la profundidad de los elementos cuando se solapan</p>

        <div class="box"
            style="background-color: chartreuse; position: relative; left: 278px; bottom: 22px; z-index: 2;">1</div>
        <div class="box" style="z-index: 0;position: relative; top:-20px; left:20px; background-color: brown;">2</div>
        <div class="box" style="z-index: 1;position: relative;">3</div>

    </section>
    
  <%@include file="/includes/footer.jsp" %>