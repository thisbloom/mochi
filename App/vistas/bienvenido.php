<?php

if($_SESSION["estado"]!="ok"){
    header("location: index.php");
}
include_once "app/vistas/layout/header.php";
echo "<h1>Hola ".$_SESSION["nombres"]."</h1>";
echo "Usted es un ".$_SESSION["tipo"];
include_once "app/vistas/layout/footer.php";