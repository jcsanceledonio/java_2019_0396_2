   
<%@include file="includes/header.jsp" %>
<%@include file="includes/navigation.jsp" %>
 
 <div class="parallax">
        <h1>Prueba T�cnica Juan Carlos</h1>
        <h2>HTML, CSS, JAVASCRIPT</h2>
    </div>

    <main>
        <br>
        <div class="tabla">
            <table>
                <caption>Alumnos de clase Ipartek</caption>
                <tr>
                    <td colspan="2">Ander(Profesor)</td>
                </tr>
                <tr>
                    <td>Mikel</td>
                    <td>Joseba</td>
                </tr>
                <tr>
                    <td>Nadie</td>
                    <td>Raul</td>
                </tr>
                <tr>
                    <td>Erlantz</td>
                    <td>Cristian</td>
                </tr>
                <tr>
                    <td>Ana</td>
                    <td>Alejandro</td>
                </tr>
                <tr>
                    <td>Maria</td>
                    <td>Juan Carlos</td>
                </tr>
                <tr>
                    <td>Kiryl</td>
                    <td>I�igo</td>
                </tr>
                <tr>
                    <td>nadie</td>
                    <td>Endika</td>
                </tr>
                <tr>
                    <td>Iker</td>
                    <td>Aitor</td>
                </tr>

            </table>
            <a target="_blank" href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table">Ejemplo
                w3schools</a>
        </div>
        <h3>Voluntario <span id="nombre"></span></h3>
        <button onclick="buscarVoluntario()">�Quien lee?</button>

        <a id="btnUp" href="#"><i class="material-icons">
                keyboard_arrow_up
            </i></i></a>

    </main>
    
    <%@include file="includes/footer.jsp" %>