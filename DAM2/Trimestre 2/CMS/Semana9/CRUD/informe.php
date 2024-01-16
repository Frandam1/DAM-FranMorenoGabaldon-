<!doctype html>
<html>

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>

            body{background: rgb(220,220,200);font-family: Verdana, Geneva, Tahoma, sans-serif};
            tbody{width: 1200px; margin: auto;background: white;}

        </style>


    </head>

    <body>




    <?php include "codificador.php"; ?>
    <h1>Entregas para
        <?php echo descodifica($_GET['clave']) ?>
    </h1>

    <table class="tabla">
        <tr>
            <th>URL</th>
            <th>Asignatura</th>
            <th>practica</th>
            <th>fecha</th>
            <th>video</th>
        </tr>

        <?php

        include "config.php";

        $mysqli = new mysqli($mydbserver, $mydbuser, $mydbpassword, $mydb);
        $consulta = "SELECT * FROM entregas WHERE email = '" . descodifica($_GET['clave']) . "'";
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {
            $parts = parse_url($fila["url"]);
            parse_str($parts["query"], $query);
            $miparte = $query['v'];

            echo '<tr>';
            echo '<td>' . $fila['url'] . '</td>';
            echo '<td>' . $fila['asignatura'] . '</td>';
            echo '<td>' . $fila['practica'] . '</td>';
            echo '<td>' . $fila['epoch'] . '</td>';
            echo '<td>';
            echo '<iframe width="500" height="300" src="https://www.youtube.com/embed/' . $miparte . '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
            echo '</td>';
            echo '</tr>';
        }


        ?>

    </table>

</body>

</html>