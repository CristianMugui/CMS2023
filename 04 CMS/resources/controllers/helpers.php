<?php
    function query($consulta){
        global $conexion;
        return mysqli_query($conexion, $consulta);
    }
    
    function fetch_assoc($query){
        return mysqli_fetch_assoc($query);
    }

    function confirmar($query){
        global $conexion;
        if(!$query){
            die("fallo en la conexión " . mysqli_error($conexion));
        }
    }

    function limpiar_string($str){
        global $conexion;
        return mysqli_real_escape_string($conexion, $str);
    }

    function redirect($location){
        global $conexion;
        return mysqli_real_escape_string($conexion, $str);
    }

    function set_mensaje($msj){
        if(!empty($msj)){
            $_SESSION['mensaje'] = $msj;
        } else {
            $msj = ' ';
        }
    }

    function mostrar_msj(){
        if(isset($_SESSION['mensaje'])){
            echo $_SESSION['mensaje'];
            unset()
            $_SESSION['mensaje'] = $msj;
        } else {
            $msj = ' ';
        }
    }
?>