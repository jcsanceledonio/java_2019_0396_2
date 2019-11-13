//Comentario de linea
/*
    Comentario de bloque
*/
/**
 *  Comentario de bloque para documentar
 */

console.trace('Esto es una traza de log');
console.info('Para informar de cosas');
var a = 2;
console.debug('La variable a=' + a);
//console.warn('alerta');
//console.error('Error en la conexion de al servidor');

function buscarVoluntario() {

    var personas = ["Juan", "Pepe", "Luis"];
    //console.trace('click buscaVoluntario');

    document.getElementById("nombre").innerHTML = personas[Math.floor(Math.random() * personas.length)];

    //document.getElementById('nombre').innerHTML = "Ander";
}