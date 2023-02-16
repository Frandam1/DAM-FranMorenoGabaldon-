<html>
<head>
    <style>
        body{background: black;}
        canvas{background: white;}
    </style>
</head>
<body>
    <canvas id="lienzo" width="512px" height="512px"></canvas>
    
    <script>
        var contexto = document.getElementById("lienzo").getContext("2d")
        for(var i = 0;i < 1000; i++){
            
            contexto.fillStyle = "rgb("+Math.round(Math.random()*255)+","+Math.round(Math.random()*255)+","+Math.round(Math.random()*255)+")"
        contexto.fillRect(Math.random()*512,Math.random()*512,50,50);    
            
        }

    
    </script>
    
    </body>
</html>