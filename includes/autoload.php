<?php
spl_autoload_register(function ($nombre_clase){
    $extension = ".php";
    $ruta = $nombre_clase.$extension;

    if(file_exists($ruta)){
        include_once $ruta;
    }
});