<?php
    //Para que no bloquee nuestro servicio web.php
    header('Access-Control-Allow-Origin: *');
    //Servidor de base de datos, usuario, contraseña, base de datos
    $cn = new mysqli("localhost", "id19748135_musicmoda1", "mygBv&9GlPur*T&8", "id19748135_musicmoda");
    //Se indica la consulta SQL
    $rs = $cn -> query("SELECT * FROM eventos");
    //Estructura repetitiva while
    //Se lee cada fila hasta que no haya filas que leer
    while ($row = $rs -> fetch_assoc()) {
        //Cada fila se está almacenando en un arreglo
        $res[] = $row;
    }
    //JSON_UNESCAPED_UNICODE sirve para reconocer caracteres
    echo json_encode($res, JSON_UNESCAPED_UNICODE);
    //Cierra la consulta SQL
    $cn -> close();
?>