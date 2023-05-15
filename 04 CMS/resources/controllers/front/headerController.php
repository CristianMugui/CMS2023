<?php
    // function saludar(){
    //     echo 'funcionaaaa';
    // }
    function getDataHeader(){
        $query = query("SELECT * FROM header");
        confirmar($query);
        return fetch_assoc($query);
    }

    // function getDataHeader(){
    //     global $conexion;
    //     $query = "SELECT * FROM header";
    //     $queryRes = mysqli_query($conexion, $query);

    //     // print_r($queryRes);
    //     $fila = mysqli_fetch_assoc($queryRes);
    //     return $fila;
    // }
?>