<?php include ('conexion.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pelicomic</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/css/bootstrap.min.css" integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos(as) a Pelicomic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="./" class="btn btn-success">HOME</a>
            <a href="editar_dir.php" class="btn btn-primary ml-2">CREAR</a>
        </div>
        <div class="row">
            <?php               
                $query = "SELECT a.dire_id, CONCAT(a.dire_nombres, ' ', a.dire_apellidos) AS director, a.dire_img , a.dire_nacionalidad FROM directores a";
                $queryRes = mysqli_query($conexion, $query);

                while($fila = mysqli_fetch_assoc($queryRes)){
                   ?>
                    <div class="col-md-3 mb-4">
                        <img src="<?php echo $fila['dire_img']; ?>" alt="img_director" width="100%">
                        <h4 class="text-info">
                            <?php 
                                echo $fila['director'];
                            ?>
                        </h4>
                        <div>
                            <strong>Nacionalidad: </strong> <?php echo $fila['dire_nacionalidad']; ?>
                        </div>                        
                        <div class="mt-1">
                            <a href="editar_dir.php?id=<?php echo $fila['dire_id']; ?>" class="btn btn-success">editar</a>
                            <a href="borrar_dir.php?id=<?php echo $fila['dire_id']; ?>" class="btn btn-danger">borrar</a>
                        </div>
                    </div>
                <?php }
            ?>            
        </div>
    </section>
</body>
</html>