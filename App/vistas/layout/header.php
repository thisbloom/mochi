<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Proyecto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body class="bg-ligth">
<div class="container">
    <div class="row">
        <div class="col">
            <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <div class="container-fluid">
                    Empresa
                </div>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col">
                <?php
                    echo "<li><a href='index.php?bienvenido'>Inicio</a></li>";
                    switch ($_SESSION["tipo"]){
                        case "profesor":
                            echo "Profesor
                                  <li><a href='index.php?ver-curso-a-cargo'>Ver Cursos a Cargo</a></li>";
                            break;
                        case "estudiante":
                            echo "Estudiante
                                  <li><a href='#'>Ver Notas</a></li>
                                  <li><a href='#'>Matrícula</a></li>";
                            break;
                        case "administrador":
                            echo "Administrador
                                  <li><a href='index.php?crear-usuario'>Crear Usuarios</a></li>
                                  <li><a href='index.php?crear-plan-de-estudios'>Crear Plan de Estudios</a></li>
                                  <li><a href='index.php?asignar-cursos'>Asignar Cursos</a></li>";
                            break;
                    }
                    echo "<li><a href='logout.php'>Salir</a></li>"
                ?>
        </div>
        <div class="col-9">
