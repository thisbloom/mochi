<?php

namespace App\Controladores;

use App\Clases\Usuario;

include_once "includes/autoload.php";

class ControladorUsuario
{

    public function validar(int $codigo){
        $usuario = new Usuario();
        $usuario->setCodigo($codigo);
        var_dump($usuario->getCodigo());

    }

    public function login(int $codigo, string $password): void
    {
        $usuario = new Usuario();
        $query = $usuario->mostrarPorCodigo($codigo);
        if ($query->rowCount() != 1) {
            echo "Usuario y/o Contraseña incorrecto";
        } else {
            $datos = $query->fetchAll();
            foreach ($datos as $user) {
                $passwordBD = $user["pass"];
                $nombres = $user["nombres"] . " " . $user["apellidos"];
                $tipo = $user["tipo"];
                $id_pa = $user["id_pa"];
            }
            if (password_verify($password, $passwordBD)) {
                session_start();
                $_SESSION["nombres"] = $nombres;
                $_SESSION["tipo"] = $tipo;
                $_SESSION["id_pa"] = $id_pa;
                $_SESSION["estado"] = "ok";
                header("Location: index.php?bienvenido");
            } else {
                echo "Usuario y/o Contraseña incorrecto";
            }
        }
    }

    public function crearUsuario(string $nombres, string $apellidos, int $codigo, string $password, string $tipo): string
    {
        $mensaje = "";

        if (!$this->validarCadena($nombres)) {
            $mensaje .= "Caracteres no admitidos en Nombres<br>";
        }

        if (!$this->validarCadena($apellidos)) {
            $mensaje .= "Caracteres no admitidos en Apellidos<br>";
        }

        if (strlen($codigo) != 8 && strlen($codigo) != 11) {
            $mensaje .= "El codigo no cumple con las condiciones necesarias<br>";
        }

        // session_start();
        // $id_pa = $_SESSION["id_pa"];
        $id_pa = "1";

        if (strlen($mensaje) == 0) {
            $usuario = new Usuario();
            $password = password_hash($password, PASSWORD_BCRYPT);
            $resultado = $usuario->insertar($codigo, $password, $tipo, $id_pa, $nombres, $apellidos);
            if ($resultado != 0) {
                $mensaje = "Guardado";
            }
        }

        return $mensaje;
    }

    public function validarCadena($cadena): bool
    {
        preg_match("/[a-zA-Z ]+/", $cadena, $valores);
        $validacion = (strlen($cadena) == strlen($valores[0])) ? true : false;
        return $validacion;
    }

    public function mostrarEstudiantes(){
        $usuario = new Usuario();
        return $usuario->mostrarEstudiantes();

    }
}