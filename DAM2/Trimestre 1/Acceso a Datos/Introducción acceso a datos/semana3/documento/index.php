<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 1</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="miestilo.css">
    <script src="script.js"></script>

    <!-- Agregar los estilos de Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <div class="contenedor">
        <table class="table table-bordered table-striped" width="80%" height="80%">
            <tr id="menu">
                <td>
                    Menu
                </td>
            </tr>
            <tr id="barranombredocumento">
                <td>
                    <input type="text" id="documentname" class="form-control" placeholder="Nombre del documento"
                        value='<?php echo explode(".", $_GET['file'])[0] ?>'>
                </td>
            </tr>
            <tr id="herramientas">
                <td>
                    <div class="btn-group" role="group" aria-label="Herramientas">
                        <button id="guardar" class="btn btn-primary">
                            <img src="../img/bootstrap-icons-1.11.0/floppy.svg" class="icon">
                            Guardar
                        </button>
                        <select id="tipotexto" class="form-select">
                            <option value="p">Texto de párrafo</option>
                            <option value="h1">Encabezado 1</option>
                            <option value="h2">Encabezado 2</option>
                            <option value="h3">Encabezado 3</option>
                            <option value="h4">Encabezado 4</option>
                            <option value="h5">Encabezado 5</option>
                            <option value="h6">Encabezado 6</option>
                            <option value="pre">Preformateado</option>
                        </select>
                        <select id="selectfont" class="form-select">
                            <option value="Arial">Arial</option>
                            <option value="Verdana">Verdana</option>
                            <option value="Tahoma">Tahoma</option>
                            <option value="Georgia">Georgia</option>
                            <option value="Garamond">Garamond</option>
                        </select>
                        <input type="number" id="fontsize" class="form-control" value="10">
                        <button id="bold" class="btn btn-secondary"><img
                                src="../img/bootstrap-icons-1.11.0/type-bold.svg" class="icon"></button>
                        <button id="cursive" class="btn btn-secondary"><img
                                src="../img/bootstrap-icons-1.11.0/type-italic.svg" class="icon"></button>
                        <button id="underline" class="btn btn-secondary"><img
                                src="../img/bootstrap-icons-1.11.0/type-underline.svg" class="icon"></button>
                        <button id="orderedlist" class="btn btn-secondary">
                            <img src="../img/bootstrap-icons-1.11.0/list-ol.svg" class="icon">

                        </button>
                        <button id="unorderedlist" class="btn btn-secondary">
                            <img src="../img/bootstrap-icons-1.11.0/list-ul.svg" class="icon">

                        </button>
                        <button id="align-left" class="btn btn-secondary">
                            <img src="../img/bootstrap-icons-1.11.0/text-left.svg" class="icon">

                        </button>
                        <button id="align-center" class="btn btn-secondary">
                            <img src="../img/bootstrap-icons-1.11.0/text-center.svg" class="icon">

                        </button>
                        <button id="align-right" class="btn btn-secondary">
                            <img src="../img/bootstrap-icons-1.11.0/text-right.svg" class="icon">

                        </button>

                        <input type="color" id="fontcolor" class="form-control">
                    </div>
                </td>
            </tr>
            <tr>
                <td id="fondopagina">
                    <div id="pagina" contenteditable="true">
                        <?php
                        include "../vault/users/fran/" . $_GET['file'];
                        ?>
                    </div>
                </td>
            </tr>
        </table>
        <script>
            $("#orderedlist").click(function () {
                $("#pagina").append("<ol><li></li></ol>");
            });

            $("#unorderedlist").click(function () {
                $("#pagina").append("<ul><li></li></ul>");
            });
            $("#align-left").click(function () {
                $("#pagina").css("text-align", "left");
            });

            $("#align-center").click(function () {
                $("#pagina").css("text-align", "center");
            });

            $("#align-right").click(function () {
                $("#pagina").css("text-align", "right");
            });
        </script>
    </div>
</body>

</html>