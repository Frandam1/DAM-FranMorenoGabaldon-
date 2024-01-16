<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log-In</title>
    <!-- Agregar los estilos de Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #333; 
            color: #fff; 
        }

        .card {
            background: #444; 
        }

        .card-title {
            color: #fff; 
        }

        .form-control {
            background: #555; 
            color: #fff; 
        }

        .btn-primary {
            background: #007BFF; 
            border-color: #007BFF; 
        }

        .btn-primary:hover {
            background: #0056b3; 
            border-color: #0056b3; 
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title text-center">Inicio de Sesión</h5>
                        <form action="login.php" method="POST">
                            <div class="mb-3">
                                <label for="user" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="user" name="user">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
