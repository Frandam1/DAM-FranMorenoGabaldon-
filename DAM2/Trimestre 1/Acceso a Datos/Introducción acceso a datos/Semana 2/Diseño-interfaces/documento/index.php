<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 1</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilo.css">
    <script src="script.js"></script>
</head>

<body>
    <table width=100% height=100%>
        <tr height=20px id="menu">
            <td>
                Menu
            </td>
        </tr>
        <tr height=20px id="barranombredocumento">
            <td>
                <input type="text" id="documentname" placeholder="nombre del documento"
                value='<?php echo explode(".",$_GET['file'])[0] ?>'>
            </td>
        </tr>
        <tr height=50px id="herramientas">
            <td>

                <button id="guardar">Guardar</button>
                <select id="tipotexto">
                    <option value="p">Texto de parrafo</option>
                    <option value="h1">Encabezado 1</option>
                    <option value="h2">Encabezado 2</option>
                    <option value="h3">Encabezado 3</option>
                    <option value="h4">Encabezado 4</option>
                    <option value="h5">Encabezado 5</option>
                    <option value="h6">Encabezado 6</option>
                    <option value="pre">Preformateado</option>

                </select>
                <select id="selectfont">
                    <option value="Arial">Arial</option>
                    <option value="Verdana ">Verdana </option>
                    <option value="Tahoma ">Tahoma </option>
                    <option value="Georgia ">Georgia </option>
                    <option value="Garamond ">Garamond </option>
                </select>
                <input type="number" id="fontsize" value="10">
                <button id="bold">B</button>
                <button id="cursive">C</button>
                <button id="underline">U</button>
                <input type="color" id="fontcolor">
            </td>
        </tr>
        <tr>
            <td id="fondopagina">
                <div id="pagina" contenteditable="true">
                    <?php 
                        include "../vault/users/fran/".$_GET['file']
                    
                    
                    
                    ?>
                </div>
            </td>
        </tr>
    </table>

</body>

</html>