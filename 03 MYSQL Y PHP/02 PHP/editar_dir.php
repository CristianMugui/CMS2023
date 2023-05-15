<?php include('conexion.php'); ?>
<?php ob_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pelicomic</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css" integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos(as) a Pelicomic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="./" class="btn btn-success">HOME</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-md-12">Ingresa los datos del director</h4>
            <?php
            $titulo="Crear";
            $fila=new stdClass();
            $fila->dire_nombres="";
            $fila->dire_apellidos="";
            $fila->dire_img="";
            $fila->dire_nacionalidad="";
            $id=null;
                if(isset($_GET['id'])){
                    $id = $_GET['id'];
                    // echo $id;
                    $query = "SELECT * FROM directores WHERE dire_id = {$id}";
                    $queryRes = mysqli_query($conexion, $query);
                    $fila = mysqli_fetch_object($queryRes);
                    $titulo = "editar";
                    // print_r($fila);
                }
            ?>
            <form class="col-md-6 mt-4 pb-5" method="post">
                <div class="form-group">
                    <label for="peli_nombres">Nombre</label>
                    <input 
                        type="text" 
                        id="dire_nombres" 
                        class="form-control" 
                        name="dire_nombre"
                        value="<?php echo $fila->dire_nombres; ?>"
                    >
                </div>
                <div class="form-group">
                    <label for="dire_apellidos">Apellidos</label>
                    <input type="text" id="dire_apellidos" class="form-control" name="dire_apellidos" value="<?php echo $fila->dire_apellidos; ?>">
                </div>
                <div class="form-group">
                    <label for="dire_img">URL img</label>
                    <input type="text" id="dire_img" class="form-control" name="dire_img" required value="<?php echo $fila->dire_img; ?>">
                </div>                
                <div class="form-group">
                    <label for="dire_nacionalidad">Nacionalidad</label>
                    <input type="text" id="dire_nacionalidad" class="form-control" name="dire_nacionalidad" value="<?php echo $fila->dire_nacionalidad; ?>">
                </div>
                <div class="form-group">
                    <input type="submit" value="<?php echo $titulo ?>" name="<?php echo $titulo ?>" class="btn btn-success">
                </div>
            </form>
            <?php
                if(isset($_POST[$titulo])){                    
                    $dire_nombres = $_POST['dire_nombres'];
                    $dire_apellidos = $_POST['dire_apellidos'];
                    $dire_img = $_POST['dire_img'];
                    $dire_nacionalidad = $_POST['dire_nacionalidad'];                  

                    $query = "REPLACE INTO directores (dire_id, dire_nombres, dire_apellidos, dire_img, dire_nacionalidad) VALUES ('$id', '$dire_nombres','$dire_apellidos','$dire_img', '$dire_nacionalidad')";
                    mysqli_query($conexion, $query);
                    header("Location: directores.php");
                }
            ?>
        </div>
    </section>
</body>
</html>