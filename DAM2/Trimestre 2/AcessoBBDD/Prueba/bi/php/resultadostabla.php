<?php

$mysqli = new mysqli("localhost", "registros", "registros", "registros");
$sql = $mysqli->real_escape_string($_GET["sql"]."");
$result = $mysqli -> query($sql);
$row = $result -> fetch_assoc();
$contador = 0;
while ($row = $result -> fetch_assoc()){
    $contador++;
} 
echo '<p>la busqueda a devuelto '.$contador.' resultados</p>';

?>

<table colpadding = 0 colspacing = 0 cellpadding = 0 cellspacing = 0 width=100%>
<?php

$mysqli = new mysqli("localhost", "registros", "registros", "registros");
$sql = $mysqli->real_escape_string($_GET["sql"]."");
$result = $mysqli -> query($sql);
if ($row = $result -> fetch_assoc()) {
    echo '<tr>';
    foreach($row as $campo=>$valor){
        echo '<th>'.$campo.'</th>';
    } 
    echo '</tr>';
}

$mysqli = new mysqli("localhost", "registros", "registros", "registros");
$sql = $_GET["sql"];
$result = $mysqli -> query($sql);
while ($row = $result -> fetch_assoc()) {
    echo '<tr>';
    foreach($row as $campo=>$valor){
        echo '<td>'.$valor.'</td>';
    } 
    echo '</tr>';
}

?>
</table>