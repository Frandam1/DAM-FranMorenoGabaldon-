<?php include "../admin/conexion.php"?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Dashboard Template · Bootstrap v5.3</title>
      <script src="https://kit.fontawesome.com/edd3afe546.js" crossorigin="anonymous"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">
      <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    

    

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Company name</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="#">Sign out</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">
              <span data-feather="home" class="align-text-bottom"></span>
              Dashboard
            </a>
          </li>
            <?php 
               
                $peticion = "SHOW TABLES";
                $resultado = mysqli_query($enlace,$peticion);
                while($fila = $resultado->fetch_assoc()) {
                echo '
                    <li class="nav-item">
                    <a class="nav-link" href="?tabla='.$fila['Tables_in_examen3'].'">
                    <span data-feather="file" class="align-text-bottom"></span>
                    '.$fila['Tables_in_examen3'].'
                    </a>
                    </li>
                ';
                }
            ?>
          
          
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
          <span>Informes guardados</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle" class="align-text-bottom"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          
         <?php 
               
                $peticion = "SHOW FULL TABLES IN examen3 WHERE TABLE_TYPE LIKE 'VIEW'";
                $resultado = mysqli_query($enlace,$peticion);
                while($fila = $resultado->fetch_assoc()) {
                echo '
                    <li class="nav-item">
                    <a class="nav-link" href="#">
                    <span data-feather="file-text" class="align-text-bottom"></span>
                    '.$fila['Tables_in_cursojava'].'
                    </a>
                    </li>
                ';
                }
            ?>
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar" class="align-text-bottom"></span>
            This week
          </button>
        </div>
      </div>

     <!--<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>-->

      <h2>Section title</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
                
                <?php 
               
                $peticion = "SHOW COLUMNS FROM ".$_GET['tabla'].";";
                $resultado = mysqli_query($enlace,$peticion);
                    $contador = 0;
                    $cabeceras;
                while($fila = $resultado->fetch_assoc()) {
                    $cabeceras[$contador] = $fila['Field'];
                echo '
                    <th scope="col">'.$fila['Field'].'</th>
                ';
                    $contador++;
                }
                //var_dump($cabeceras);
            ?>
            <th>Ver</th>
            <th>Actualizar</th>
            <th>Eliminar</th>
             
            </tr>
          </thead>
          <tbody>
            
                <?php 
               
                $peticion = "SELECT * FROM ".$_GET['tabla'].";";
              
                $resultado = mysqli_query($enlace,$peticion);
                while ($fila = $resultado->fetch_array()) {
                //var_dump($fila);
                echo '<tr>';
                    $contador = 0;
                for($i = 0; $i<count($fila)/2; $i++){
                    
                   echo '<td cabecera="'.$cabeceras[$contador].'" identificador='.$fila[0].'>'.$fila[$i].'</td>';
                    $contador++;
                }    
                echo '
                    <td><a href="ver.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'"><i class="fa-solid fa-eye"></i></a></td>
                    <td><a href="actualizar.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'">Actualizar</a></td>
                    <td><a href="eliminar.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'"><i class="fa fa-trash" aria-hidden="true"></i></a></td>';
                echo ' </tr>';
                }
            ?>

            
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
      <script  src= "js/jquery-3.6.3.min.js"></script>
      <script>window.jQuery || document.write('<script src="jquery-1.11.3.min.js"><\/script>')</script>
      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
      <script>
        var tabla = '<?php echo $_GET['tabla']?>'
        $("td").dbclick(function(){
            $(this).attr("contenteditable","true");
        })
          $("td").blur(function(){
            $(this).attr("contenteditable","false");
              console.log("meto en BBDD")
              var valor = $(this).text()
              console.log("el nuevo valor es "+valor)
              var identificador = $(this).attr("identificador")
              console.log("el valor con el que voy a trabajar tiene el id"+identificador)
              var columna = $(this).attr("cabecera")
              console.log("la columna e s es "+columna)
              console.log("la tabla es "+tabla)
              
          })
      
      
      
      </script>
  </body>
</html>
