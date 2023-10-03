<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diseño Interfaces</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous">
        </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        h1,
        h3 {
            color: white;
            font-weight: lighter;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        body {
            background: lightslategray;
        }

        .container {
            align-items: center;
        }

        .item {
            width: 300px;
            height: 300px;
            padding: 5px;
            margin: 5px;
            border: 2px solid black;
            border-radius: 5px;
            float: left;
            position: relative;
            background-color: #cb6e6e;

            text-align: center;

        }

        .documentname {
            position: absolute;
            bottom: 5px;
            width: 50%;
            background-color: rgba(197, 34, 222, 0.7);
            color: white;
            padding: 5px;
            margin: 0;
            margin-left: -24%;


        }

        .iconfolder img,
        .iconfile img {
            width: 50px;
            margin: auto;
            display: block;

        }

        .item[filetype="html"] {
            background-color: #3887dc;

        }
    </style>
</head>

<body>
    <header class="container mt-3">
        <h1 class="display-4">Diseño de Interfaces</h1>
    </header>
    <main class="container mt-4">
        <h3 class="mb-4">Lista de documentos</h3>
        <div id="carpetaactual" class="row"></div>
    </main>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#carpetaactual").load("leecarpeta.php?user=<?php echo $_SESSION['user'] ?>")
            $(document).on("click", ".item", function () {

                if ($(this).attr("filetype") == "html") {

                    window.location = "documento/index.php?file=" + $(this).attr("filename");
                    console.log("Redireccionando a: documento/index.php?file=" + $(this).attr("filename"));
                }
                console.log($(this).attr("filetype"))
                console.log($(this).attr("filename"))
            })

        })
    </script>
</body>

</html>