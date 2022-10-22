// LEER SERVICIO WEB
fetch("https://musicmoda.000webhostapp.com/eventos.php")
.then(response => response.json())
.then(data => {
    llenarTablaEnvios(data);
});

//Poner los datos del sevicio web leido en html y mostrarlo
function llenarTablaEnvios(data) {
    let contenidoTabla = "";
    data.map(item => {
        let fila = "<tr>";
        fila += "<td>" + item.idevento + "</td>";
        fila += "<td>" + item.evento + "</td>";
        fila += "<td>" + item.invitado + "</td>";
        fila += "<td>" + item.pais + "</td>";
        fila += "<td>" + item.fecha + "</td>";
        fila += "</tr>";
        contenidoTabla += fila;
    });
    $("#tbody-eventos").html(contenidoTabla);
}

