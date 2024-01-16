<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
    <script src="https://kit.fontawesome.com/e1a1e937cf.js" crossorigin="anonymous"></script>
    <script>
    console.log('<?php echo addslashes($consulta2->sqlstate . ' - ' . $consulta2->sqlstate); ?>');
</script>
    <style>
        body {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: black;
            font-size: 30px;
            color: white;
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
            height: 800px;
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
            clear: both;
        }

        .campo p {
            font-size: 12px;
            color: black;
            margin: 0;
            color: aliceblue;
            font-weight: bolder;

        }
        h5{
            margin: 0px;
            padding: 5px;
            font-style: italic;
            color: orange;
            font-size: 15px;
        }
        h3{
            color: white;
           font-size: 35px;
           margin: 0px;
        }
        p {
            font-size: 5px;
            color: #333;
        }
        #email,#url,#practica{
            margin-top: 5px;
            width: 65%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 15px;
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
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
            
        }
        h6{
            margin: 0px;
            padding: 0px;
            font-size: 10px;
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
        .contienecampo input{
            float:left;
            width: 80%;
            margin-right: 0px;
            height: 20px;
            border-radius: 5px, 0px, 0px, 5px;
            transition: all 1s;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2) inset;
        }
        input{
            transition: all 1s;
        }
        .contienecampo input:focus{outline:none;background:white}

        .contienecampo .tipocampo{
            float:right;
            width: 10%;
            height: 30px;
            line-height: 30px;
            margin-top: 4px;
            background: darkcyan;
            border-radius: 5%;
            align-content: center;
            padding: 5px;
            
        }
        i{
            margin-left: 20px;
        }
        .clearfix{clear: both;}


    </style>
</head>

<body>
<i class="fa-solid fa-user"></i>
    <?php
        include "codificador.php";
        include "controlador.php";
        $miformulario = new Supercontrolador();
        if(isset($_POST['clave']) && $_POST['clave'] = 'procesaformulario'){
            $miformulario->procesaformulario("entregas");
        }else{
            $miformulario->formulario("entregas");
        }
        include "registro.php";
        
    ?>
</body>



</html>