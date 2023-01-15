
<?php include "admin/conexion.php"?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="StyleSheet" href="estilo/estilo.css">
        <script src="lib/jquery-3.6.1.min.js"></script>
        <script src="js/javas.js"></script>
        
    </head>
    <body>
        <main>
            <header>
            <h1>Logo</h1>
            <div id="destacado">
                <img src="photo/00046gimp.png">
                <h1>Titulo</h1>
                <h2>Subtitulo</h2>
                <p>Descripcion</p>
                
                </div>
            </header>
            <div id="container">
                <section>
                    <h2>Cursos mas vistos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    
                    
                    </div>
                    <div class="ribbon">
                        <?php

                            $peticion = "SELECT * FROM cursos 
                            Order BY visualizaciones DESC
                            LIMIT 7";
                            $resultado = mysqli_query($enlace,$peticion);
                            while($fila = $resultado->fetch_assoc()) {
                              echo 
                                '<article>
                                    <div class="contenido">
                                        <img src = "photo/'.$fila['imagen'].'">
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>

                                    </div>
                                </article>';
                            }

                            ?>
                    
                    </div>   
                    </section>
               
                <div class ="detalles">
                    <img src="photo/00046gimp.png">
                    <h2>Titulo</h2>
                    <h3>Subtitulo</h3>
                    <p>Descripcion</p>
                    <button class="masinfo">Mas informacion</button>
                </div>
                <section>
                    <h2>Estrenos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    
                    
                    </div>
                    <div class="ribbon">
                        <?php

                            $peticion = "SELECT * FROM cursos LIMIT 7";
                            $resultado = mysqli_query($enlace,$peticion);
                            while($fila = $resultado->fetch_assoc()) {
                              echo 
                                '<article>
                                    <div class="contenido">
                                        <img src = "photo/'.$fila['imagen'].'">
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>

                                    </div>
                                </article>';
                            }

                            ?>
                    
                    </div>   
                    </section>
                <section>
                    <h2>Estrenos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    
                    
                    </div>
                    <div class="ribbon">
                        <?php

                            $peticion = "SELECT * FROM cursos LIMIT 7";
                            $resultado = mysqli_query($enlace,$peticion);
                            while($fila = $resultado->fetch_assoc()) {
                              echo 
                                '<article>
                                    <div class="contenido">
                                        <img src = "photo/'.$fila['imagen'].'">
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>

                                    </div>
                                </article>';
                            }

                            ?>
                    
                    </div>   
                    <section>
                    <h2>Estrenos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    
                    
                    </div>
                    <div class="ribbon">
                        <?php

                            $peticion = "SELECT * FROM cursos LIMIT 7";
                            $resultado = mysqli_query($enlace,$peticion);
                            while($fila = $resultado->fetch_assoc()) {
                              echo 
                                '<article>
                                    <div class="contenido">
                                        <img src = "photo/'.$fila['imagen'].'">
                                        <h3>'.$fila['nombre'].'</h3>
                                        <h4>'.$fila['frasedescriptiva'].'</h4>
                                        <p>'.$fila['descripcion'].'</p>

                                    </div>
                                </article>';
                            }

                            ?>
                    
                    </div>   
                    </section>
                <section>
                    <h2>Estrenos</h2>
                    <div class="botones">
                        <div class="botonredondo anterior">
                            >
                        </div>
                        <div class="botonredondo posterior">
                            >
                        </div>
                    
                    
                    </div>
                    <div class="ribbon">
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    <article>
                        <div class="contenido">
                            <img src = "photo/00046gimp.png">     <h3>Titulo</h3>
                            <h4>Descripcion</h4>
                            <p>Texto</p>
                            
                        </div>
                    </article>
                    </div>
                    
                </section>
            </div>
        </main>
    </body>
    
    



</html>