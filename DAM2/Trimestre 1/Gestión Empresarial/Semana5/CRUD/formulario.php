<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
    <style>
        body {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: darkgray;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background: rgb(2,0,36);
            background: linear-gradient(90deg, rgba(2,0,36,1) 0%, 
            rgba(67,66,122,1) 0%, rgba(122,122,196,1) 50%, 
            rgba(0,212,255,1) 91%);
            border: 5px solid aliceblue;
            border-radius: 5px;
            padding: 20px;
            width: 600px;
            box-shadow: 0 23px 51px rgba(0, 0, 0, 0.5);
        }

        .campo {
            margin-bottom: 10px;
            padding: 10px;
            
        }

        .campo label {
            font-size: 1.2em;
            display: block;
            margin-bottom: 5px;
            
        }

        .campo p {
            font-size: 23px;
            color: #666;
            margin: 0;
            color: aliceblue;
            font-weight: bolder;

        }
        h5{
            margin: 0px;
            padding: 5px;
            font-style: italic;
            color: orange;
        }
        #NIF,#url,#practica{
            margin-top: 5px;
            width: 50%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 1em;
        }

        .logo{
            height: 200px;
            width: 200px;
            display: flex;
            position: absolute;
            right: 500px;
            top: 350px;

        }
        #boton {
            background-color: #007bff;
            margin-left: 10px;
            margin-top: 15px;
            color: #fff;
            border: 2px solid aliceblue;
            padding: 15px;
            border-radius: 3px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s;
            
        }

        #boton:hover {
            background-color: #0056b3;
        }

        .notice {
            text-align: center;
            margin-top: 20px;
        }

        h1 {
            font-size: 2em;
            color: #007bff;
        }

        p {
            font-size: 20px;
            color: #333;
        }
    </style>
</head>

<body>
    <?php

        include "controlador.php";
        $miformulario = new Supercontrolador();
        if(isset($_POST['clave']) && $_POST['clave'] = 'procesaformulario'){
            $miformulario->procesaformulario("entregas");
        }else{
            $miformulario->formulario("entregas");
        }
        
    ?>
</body>

</html>