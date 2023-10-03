<!DOCTYPE html>
<html lang="en">

<head>
    <!-- <link rel="stylesheet" href="../inc/estilocms.css">-->
    <style>
        body {
            background: 240, 240, 240;
        }

        form {
            width: 400px;
            background: white;
            margin: auto;
            height: 150px;
            padding: 20px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
        }

        input {
            width: 100%;
            margin-top: 10px;
            margin-bottom: 10px;
            border: 1px solid gray;
            padding: 5px;
        }
    </style>
</head>

<body>
    <form action="login.php" method="POST">
        <input type="text" name="usuario">
        <input type="text" name="contrasena">
        <input type="submit">
    </form>
</body>

</html>